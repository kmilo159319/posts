@extends('layouts.app')

@section('content')
<div class="container">
      <div class="row justify-content-start">
            <a class="btn btn-success mb-3" href="{{route('posts.create',$post ?? '')}}">agregar nuevo post</a>
            @if (session('status'))
            <div class="alert alert-danger">{{ session('status') }}</div>
            @endif
        @foreach ($posts as $post)
         <div class="col-md-5 m-2">
            <div class="card">
                <div class="card-header">{{$post->titulo}}</div>
                  <div class="card-body row justify-content-end">
                    <div class="col-md-11">{{$post->contenido}}</div>
                    <div class="col-3 col-md-2 mt-2">
                       <a href="{{route('posts.edit',$post->id)}}" class="btn btn-primary">editar</a>
                    </div>
                    <div class="col-4 col-md-3 mt-2">
                        <form action="{{route('posts.destroy',$post->id)}}" method="POST">
                            @csrf
                            @method('DELETE')
                        <input
                       class="btn btn-danger" type="submit" value="eliminar">
                        </form>
                    </div>
                    <div class="col-md-10 mt-1" style="font-size: 9px"></div>
                    <div class="col-md-2 mt-1" style="font-size: 9px">
                        {{$post->created_at->diffForHumans()}}
                    </div>
                </div>
            </div>
        </div>
        @endforeach
   </div>
@endsection
