@extends('layouts.app')
@section('title','Edit Post')

@section('contents')
    
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
               
                <form class="form-horizontal" action="{{ url('posts/'.$post->id) }}" method="post">
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="title">Ttile:</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" value="{{$post->title }}" name="title" id="title" placeholder="Enter title">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="body">Description:</label>
                      <div class="col-sm-10">
                        <textarea
                          placeholder="Enter Description"
                          class="form-control"
                          name="body"
                          rows="10" id="body">{{ $post->body }}</textarea>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </div>
                    <input type="hidden" name="id" value="{{ $post->id }}">
                    <input name="_method" type="hidden" value="PUT">
                    {{ csrf_field() }}
                  </form>
            </div>

        </div>
    
@endsection