@extends('layouts.app')
@section('title','User Profiles')

@section('contents')
<ul>
    @foreach ($profiles as $profile) 
        <li>{{$profile->fullname}} {{$profile->user->username}}</li>
    @endforeach
</ul>
@endsection

