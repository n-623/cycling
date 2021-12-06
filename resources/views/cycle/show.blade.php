@extends('layouts.admin')
@section('title', 'コース詳細')

@section('content')

    <img class="top" src="{{ asset('storage/image/course/' . $course->image_path) }}">
    
    <div class="row">
            <div class="container">
                <div class="text-center">
                    <p>{{$course->body}}</p>
                </div>
                
                
                <div class="text-center">
                    <h3>コース概要</h3>
                    <div class="row">
                        <div class="card-group mx-auto" style="max-width: 600px">
                          　<div class="card">
                            　<img class="card-img-top" src="{{ asset('storage/image/course/map/' .$course->map_image_path)}}">
                          　</div>
                          　<div class="card">
                                <div class="card-body">
                                    <div class="text-left">
                                        <ul style="list-style: none;">
                                          　 <li>走行目安時間</li>
                                                <div class="text-right">
                                              　<p>{{$course->time}}</p>
                                              　</div>
                                          　 <li>スタート地点</li>
                                                <div class="text-right">
                                              　<p>{{$course->start}}</p>
                                              　</div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="text-center">
                <h3>コースの見どころ</h3>
                </div>

                @foreach($course->highlights as $highlight)
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="number">
                            <img src="{{ asset('storage/image/highlight/number/' .$highlight->number_image_path)}}">
                            </div>
                        </div>
                        
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="highlight">
                                    <img src="{{ asset('storage/image/highlight/' .$highlight->image_path)}}">
                                    </div>
                                    <p>{{$highlight->body}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                
            </div>
        </div>        
    </div>


    <input type="hidden" name="id" value="{{ $course->id }}">

@endsection