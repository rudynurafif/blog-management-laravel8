@extends('layouts.main')

@section('container')

  <div class="container">
    <div class="row justify-content-center mb-5">
      <div class="col-md-8">
        {{-- double curly bracket untuk menghilangkan htmlspecialchars --}}
        <h1 class="mb-3">{{ $post->title }}</h1>

        <p>by. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</p></a>

        @if ($post->image)
          <div style="max-height: 350px; overflow:hidden;">
            <img src="{{ asset('my_files/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
          </div>
        @else
          {{-- <img src="https://picsum.photos/id/{{ $post->category->id }}/1200/600" alt="{{ $post->category->id }}" class="img-fluid"> --}}
          <img src="https://picsum.photos/1200/600?random={{ $post->category->slug }}" alt="{{ $post->category->name }}" class="img-fluid">
        @endif
      
        <article class="my-3 fs-6">
        {{-- tanpa htmlspecialchars bodynya --}}
        {!! $post->body !!} 
        </article>
        
    
        <a href="/posts" class="d-block mt-3">Back to Posts</a>
      </div>
    </div>
  </div>
  
 

@endsection