
@extends('layouts.app')
@section('title', 'All users')

@section('contents')
<ul>
  @foreach($users as $user)
    <li>
      {{$user->username}} has role {{$user->role->role_name}} and FullName is {{$user->profile->fullname}}
    </li>
  @endforeach
</ul>
@endsection

