@extends('layouts.admin')
@section('title', '見どころ一覧')

@section('content')
    <div class="container">
        <div class="row">
            <h4>見どころ一覧</h4>
        </div>
        
        <div class="row">
            <div class="col-md-4">
                <a href="{{ action('Admin\HighlightController@add') }}" role="button" class="btn btn-primary">新規作成</a>
            </div>
            
            <div class="col-md-4">
                <a href="{{ action('Admin\CourseController@index') }}" role="button" class="btn btn-primary">コース一覧</a>
            </div>
        </div>
        
        <div class="row">
            <div class="list-news col-md-12 mx-auto">
                <div class="row">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th width="10%">ID</th>
                                <th width="20%">距離</th>
                                <th width="50%">説明</th>
                                <th width="10%">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($course->highlights as $highlight)
                                <tr>
                                    <th>{{ $highlight->id }}</th>
                                    <td>{{ Str::limit($highlight->mileage, 100) }}</td>
                                    <td>{{ Str::limit($highlight->body, 250) }}</td>
                                    <td>
                                        
                                        <div>
                                            <a href="{{ action('Admin\HighlightController@edit', ['id' => $highlight->id]) }}">編集</a>
                                        </div>
                                        <div>
                                            <a href="{{ action('Admin\HighlightController@delete', ['id' => $highlight->id]) }}">削除</a>
                                        </div>
                                        
                                    </td>

                                        
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection