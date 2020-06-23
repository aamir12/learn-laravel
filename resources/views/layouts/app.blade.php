<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <style>
      .copyright{
          text-align: center;
      }
      
    </style>
</head>
<body>

   @include('layouts/header')
   <div class="container">
       <h3 class="text-center">
           @yield('title')
       </h3>
       @yield('contents')

   </div>



</body>

<script src="{{ asset('js/app.js') }}"></script>
</html>