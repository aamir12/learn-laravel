@extends('layouts.app')
@section('title',$post->title)
@section('contents')
<div class="row">
    <div class="col-md-6 col-md-offset-3">
            <div class="list-group">
                <a href="" class="list-group-item">
                <h4 class="list-group-item-heading">{{ $post->title }}</h4>
                <p class="list-group-item-text">{{ $post->body }}</p>
                </a>
            </div>
    </div>
</div>
@endsection

