@extends('layouts.admin')
@section('title', 'コース編集')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>コース編集</h4>
                <form action="{{ action('Admin\CourseController@update') }}" method="post" enctype="multipart/form-data">
                    
                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">名前</label>
                            <input type="text" name="name" value="{{ old('name', $course->name) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">説明文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{ old('body', $course->body) }}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">距離</label>
                            <input type="text" name="mileage" value="{{ old('mileage', $course->mileage) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">獲得標高</label>
                            <input type="text" name="elevation" value="{{ old('elevation', $course->elevation) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">走行目安時間</label>
                            <input type="text" name="time" value="{{ old('time', $course->time) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">スタート地点</label>
                            <input type="text" name="start" value="{{ old('start', $course->start) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＵＲＬ</label>
                            <input type="text" name="url" value="{{ old('url', $course->url) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleInputFile">画像</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $course->image_path }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleInputFile">RWG画像</label>
                            <input type='file' name="image_m" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $course->map_image_path }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                            
                        </div>
                        
                     

                        <div class="form-group row">
                            <div class="col-md-10">
                                <input type="hidden" name="id" value="{{ $course->id }}">
                                
                                @csrf

                                <input type="submit" class="btn btn-primary" value="更新">
                            </div>
                        </div>

                    </fieldset>
                    
                    
                    
                    
                </form>