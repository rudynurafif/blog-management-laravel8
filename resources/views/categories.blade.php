@extends('layouts.main')

@section('container')

  <h1 class="mb-5">{{ $title }}</h1>  

  <div class="container">
    <div class="row">
      @foreach ($categories as $category)
        <div class="col-md-4 mb-3">
          <a href="/posts?category={{ $category->slug }}">
            <div class="card bg-dark text-white">
              {{-- <img src="https://picsum.photos/id/{{ $category->id }}/400/300" class="card-img" alt="{{ $category->name }}"> --}}
              <img src="https://picsum.photos/400/300?random={{ $category->slug }}" class="card-img-top" alt="{{ $category->name }}">

              <div class="card-img-overlay d-flex align-items-center p-0">
                <h5 class="card-title text-center flex-fill p-3" style="background-color: rgba(0, 0, 0, 0.7)">{{ $category->name }}</h5>
              </div>
            </div>
          </a>
        </div>
      @endforeach
    </div>
  </div>

@endsection


