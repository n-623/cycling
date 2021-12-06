@extends('layouts.admin')
@section('title', '見どころ編集')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h4>見どころ編集</h4>
                <form action="{{ action('Admin\HighlightController@update') }}" method="post" enctype="multipart/form-data">
                    
                    <fieldset class="mb-4">

                        <div class="form-group">
                            <label for="subject">距離</label>
                            <input type="text" name="mileage" value="{{ old('name', $highlight->mileage) }}" class="form-control">
                        </div>
                      
                        <div class="form-group">
                            <label for="subject">説明文</label>
                            <textarea type="text" name="body" class="form-control" rows="8">{{ old('body', $highlight->body) }}</textarea>
                        </div>
                      
                        <div class="form-group">
                            <label for="exampleInputFile">画像</label>
                            <input type='file' name="image" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $highlight->image_path }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                            
                        <div class="form-group">
                            <label for="exampleInputFile">NO.画像</label>
                            <input type='file' name="image_n" accept="image/png, image/jpeg" class="form-control-file">
                            
                            <div class="form-text text-info">
                                設定中: {{ $highlight->number_image_path }}
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="remove" value="true">画像を削除
                                </label>
                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <div class="col-md-10">
                                <input type="hidden" name="id" value="{{ $highlight->id }}">
                                
                                @csrf

                                <input type="submit" class="btn btn-primary" value="更新">
                            </div>
                        </div>

                    </fieldset>
                    
                    
                    
                    
                </form>