@extends('layouts.app')

@section('content')
<div class="container">
      <div class="row justify-content-start">
        <a href="{{route('posts.index')}}" class="btn btn-success">regresar</a>
        @if (session('status'))
        <div class="alert alert-success">{{ session('status') }}</div>
        @endif
         <div class="col-md-5 m-2 mt-5">
            <form action="{{route('posts.update',$post->id)}}" method="POST">
                @csrf
                @method('PATCH')
                <div class="form-group">
                  <label for="titulo">titulo</label>
                  <input type="text" class="form-control" name="titulo" value="{{$post->titulo}}">
                  <small class="form-text text-muted">maximo 20 carcteres</small>
                </div>
                <div class="form-group">
                  <label for="contenido">contenido del post</label>
                  <textarea name="contenido" class="form-control" cols="30" rows="7">{{$post->contenido}}</textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-3">guardar</button>
              </form>
        </div>
@endsection
