@extends('layouts.admin')
@section('title', 'コース詳細')

@section('content')

    <img class="top" src="{{ Utl::imgPath('course', $course->image_path)}}">
    
    <div class="row">
            <div class="container">
                <div class="text-center">
                    <p>{!! Utl::nl2br(e( $course->body )) !!}</p>
                </div>
                
                
                <div class="text-center">
                    <h3>コース概要</h3>
                    <div class="row">
                        <div class="card-group mx-auto" style="max-width: 600px">
                          　<div class="card">
                                <a href="{{$course->url}}"><img class="card-img-top" src="{{ Utl::imgPath('course/map', $course->map_image_path) }}"></a>
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
                            <img src="{{ Utl::imgPath('highlight/number', $highlight->number_image_path) }}">
                            </div>
                        </div>
                        
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="highlight">
                                    <img src="{{ Utl::imgPath('highlight', $highlight->image_path) }}">
                                    </div>
                                    <p><big>{{$highlight->mileage}}</big></p>
                                    <p>{!! Utl::nl2br(e( $highlight->body )) !!}</p>
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