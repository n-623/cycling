@extends('layouts.admin')
@section('title', '観光記事編集')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>観光記事編集</h4>
                <form action="{{ action('Admin\CycleController@update') }}" method="post" enctype="multipart/form-data">
                    
                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">名前</label>
                            <input type="text" name="name" value="{{ old('name', $spot->name) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">本文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{ old('body', $spot->body) }}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">住所</label>
                            <input type="text" name="address" value="{{ old('address', $spot->address) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">電話番号</label>
                            <input type="text" name="tel" value="{{ old('tel', $spot->tel) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">営業時間</label>
                            <input type="text" name="hour" value="{{ old('hour', $spot->hour) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">休み</label>
                            <input type="text" name="holiday" value="{{ old('holiday', $spot->holiday) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＨＰ</label>
                            <input type="text" name="url" value="{{ old('hp', $spot->hp) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">ＵＲＬ</label>
                            <input type="text" name="map" value="{{ old('map', $spot->map) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">ジャンル</label>
                            <select class="form-control" name="genre" id="exampleFormControlSelect1">
                                <option @if($spot->genre == '建物') selected="selected"@endif>建物</option> 
                                <option @if($spot->genre == '自然') selected="selected"@endif>自然</option>
                                <option @if($spot->genre == 'ダム') selected="selected"@endif>ダム</option>
                                <option @if($spot->genre == 'ランチ') selected="selected"@endif>ランチ</option>
                                <option @if($spot->genre == 'スイーツ') selected="selected"@endif>スイーツ</option> 
                            </select>
                        </div>
                     
                        <div class="form-group">
                            <label for="exampleInputFile">画像大</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $spot->image_path }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                            
                        </div>
                     
                        <div class="form-group">
                            <label for="exampleInputFile">画像小</label>
                            <input type='file' name="image_s" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $spot->image_path_s }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                            
                        </div>
                        
                        
                        <div class="form-group row">
                            <div class="col-md-10">
                                <input type="hidden" name="id" value="{{ $spot->id }}">
                                
                                @csrf

                                <input type="submit" class="btn btn-primary" value="更新">
                            </div>
                        </div>

                    </fieldset>
                    
                    
                    
                    
                </form>