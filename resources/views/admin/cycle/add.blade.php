@extends('layouts.admin')
@section('title', '観光記事新規作成画面')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>観光記事新規作成</h4>
                <form action="{{ action('Admin\CycleController@create') }}" method="post" enctype="multipart/form-data">

                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">名前</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">本文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{old('body')}}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">住所</label>
                            <input type="text" name="address" value="{{old('address')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">電話番号</label>
                            <input type="text" name="tel" value="{{old('tel')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">営業時間</label>
                            <input type="text" name="hour" value="{{old('hour')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">休み</label>
                            <input type="text" name="holiday" value="{{old('holiday')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＨＰ</label>
                            <input type="text" name="url" value="{{old('url')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＵＲＬ</label>
                            <input type="text" name="map" value="{{old('map')}}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">ジャンル</label>
                            <select class="form-control" name="genre" id="exampleFormControlSelect1">
                                <option>建物</option>
                                <option>自然</option>
                                <option>ダム</option>
                                <option>ランチ</option>
                                <option>スイーツ</option>
                            </select>
                     
                        <div class="form-group">
                            <label for="exampleInputFile">画像大</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                     
                        <div class="form-group">
                            <label for="exampleInputFile">画像小</label>
                            <input type='file' name="image_s" accept="image/png, image/jpeg" class="form-control-file">
                        </div>
                        
                        @csrf
                     
                        <input type="submit" class="btn btn-primary" value="保存">

                    </fieldset>
                </form>

            </div>
        </div>
    </div>
@endsection