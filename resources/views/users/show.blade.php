@extends('layouts.app')
@section('title','User detail')
    
@section('contents')
<ul>
    <li>
        {{ $user->username}} has username {{ $user->role->role_name }}
    </li>
</ul>
@endsection



