@extends('layouts.admin')
@section('title', 'コース新規作成画面')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>コース新規作成</h4>
                <form action="{{ action('Admin\CourseController@create') }}" method="post" enctype="multipart/form-data">

                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">名前</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">説明文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{old('body')}}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">距離</label>
                            <input type="text" name="mileage" value="{{old('mileage')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">獲得標高</label>
                            <input type="text" name="elevation" value="{{old('elevation')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">走行目安時間</label>
                            <input type="text" name="time" value="{{old('time')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">スタート地点</label>
                            <input type="text" name="start" value="{{old('start')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＵＲＬ</label>
                            <input type="text" name="url" value="{{old('url')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleInputFile">画像</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleInputFile">RWG画像</label>
                            <input type='file' name="image_m" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                     
                        @csrf
                     
                        <input type="submit" class="btn btn-primary" value="保存">

                    </fieldset>
                </form>

            </div>
        </div>
    </div>
@endsection