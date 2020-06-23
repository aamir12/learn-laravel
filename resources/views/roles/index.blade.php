@extends('layouts.app')
@section('title','User Role Wise')
@section('contents')
  <ul>
    @foreach($role->user as $user)
      <li>{{$user->username}} has role {{$user->role->role_name}}</li>
    @endforeach  
  </ul>
@endsection

