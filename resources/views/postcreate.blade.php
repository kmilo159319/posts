@extends('layouts.app')

@section('content')
<div class="container">
      <div class="row justify-content-start">
        <a href="{{route('posts.index')}}" class="btn btn-success">regresar</a>
        @if (session('status'))
        <div class="alert alert-danger">{{ session('status') }}</div>
        @endif
        @if (session('message'))
        <div class="alert alert-success">{{ session('message') }}</div>
        @endif
         <div class="col-md-5 m-2 mt-5">
            <form action="{{route('posts.store',$post ?? '')}}" method="POST">
                @csrf
                @method('POST')
                <div class="form-group">
                  <label for="titulo">titulo</label>
                  <input type="text" class="form-control" name="titulo" placeholder="inserte un titulo">
                  <small class="form-text text-muted">maximo 20 carcteres</small>
                </div>
                <div class="form-group">
                  <label for="contenido">contenido del post</label>
                  <textarea name="contenido" class="form-control" cols="30" rows="7" placeholder="por favor inserte un contenido"></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-3">crear</button>
              </form>
        </div>
@endsection
