@extends('layouts.admin')
@section('title', '見どころ新規作成画面')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>見どころ新規作成</h4>
                <form action="{{ action('Admin\HighlightController@create') }}" method="post" enctype="multipart/form-data">

                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">距離</label>
                            <input type="text" name="mileage" value="{{old('mileage')}}" class="form-control">
                        </div>
                      
                      
                        <div class="form-group">
                            <label for="subject">説明文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{old('body')}}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleInputFile">画像</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleInputFile">NO.画像</label>
                            <input type='file' name="image_n" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                     
                        @csrf
                        <input type="hidden" name="course_id" value="{{ $id }}">
                     
                        <input type="submit" class="btn btn-primary" value="保存">

                    </fieldset>
                </form>

            </div>
        </div>
    </div>
@endsection