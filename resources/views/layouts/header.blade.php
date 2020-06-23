<nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="{{ url('/') }}">{{ config('app.name')  }}</a>
      </div>
      <ul class="nav navbar-nav pull-right">
        <li class="{{ (request()->is('posts*')) ? 'active' : ''}}"><a href="{{url('posts')}}">Post</a></li>
        <li class="{{ (request()->is('users*')) ? 'active' : ''}}"><a href="{{url('users')}}">Users</a></li>
      </ul>
    </div>
  </nav>

 