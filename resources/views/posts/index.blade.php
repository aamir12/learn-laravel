@extends('layouts.app')
@section('title','All Posts')
@section('contents')
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        @if (session('message'))
           <div class="alert alert-success">
             {{ session('message') }}
           </div>
            
        @endif
        @foreach ($posts as $post)
            <div class="list-group">
            <a href="{{ url('posts/'.$post->id) }}" class="list-group-item">
                <h4 class="list-group-item-heading">{{ $post->title }}</h4>
                <p class="list-group-item-text">{{ $post->body }}</p>
            </a>
                <div class="pull-right">
                    <a href="{{ url('posts/'.$post->id).'/edit' }}" class="btn btn-primary btn-sm">Edit</a>
                    <a href="{{ url('posts/'.$post->id).'/delete'  }}" class="btn btn-danger btn-sm">
                        Delete
                    </a>
                </div>
                <div class="clearfix"></div>
            </div>
        @endforeach
       
    </div>
</div>
@endsection

