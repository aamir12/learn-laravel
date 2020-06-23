@extends('layouts.app')
@section('title','Create Post')

@section('contents')
    
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                @if (session('message'))
                    <div class="alert alert-success">
                      {{ session('message') }}
                    </div>
                @endif
                <form class="form-horizontal" action="{{ url('posts') }}" method="post">
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="title">Ttile:</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="title" id="title" placeholder="Enter title">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="body">Description:</label>
                      <div class="col-sm-10">
                        <textarea
                          placeholder="Enter Description"
                          class="form-control"
                          name="body"
                          rows="10" id="body"></textarea>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </div>

                    {{ csrf_field() }}
                  </form>
            </div>

        </div>
    
@endsection