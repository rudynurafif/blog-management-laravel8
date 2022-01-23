@extends('dashboard.layouts.main')

@section('container')

<div class="container">
  <div class="row my-3">
    <div class="col-lg-8">
      <h1 class="mb-4">{{ $post->title }}</h1>

      <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to All My Posts</a>
      <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
      <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
        @method('delete')
        @csrf
        <button class="btn btn-danger" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
      </form>

      @if ($post->image)
        <div style="max-height: 350px; overflow:hidden">
          <img src="{{ asset('my_files/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
        </div>
      @else
        <img src="https://picsum.photos/id/{{ $post->category->id }}/1200/600" alt="{{ $post->category->id }}" class="img-fluid mt-3">
      @endif
    
      <article class="my-3 fs-6">
      {{-- tanpa htmlspecialchars bodynya --}}
      {!! $post->body !!} 
      </article>
      
    </div>
  </div>
</div>

@endsection