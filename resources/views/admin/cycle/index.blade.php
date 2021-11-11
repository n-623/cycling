@extends('layouts.admin')
@section('title', '観光記事一覧')

@section('content')
    <div class="container">
        <div class="row">
            <h4>観光記事一覧</h4>
        </div>
        
        <div class="row">
            <div class="col-md-4">
                <a href="{{ action('Admin\CycleController@add') }}" role="button" class="btn btn-primary">新規作成</a>
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
                                <th width="20%">名前</th>
                                <th width="50%">説明</th>
                                <th width="10%">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($spots as $spot)
                                <tr>
                                    <th>{{ $spot->id }}</th>
                                    <td>{{ Str::limit($spot->name, 100) }}</td>
                                    <td>{{ Str::limit($spot->body, 250) }}</td>
                                    <td>
                                        
                                        <div>
                                            <a href="{{ action('Admin\CycleController@edit', ['id' => $spot->id]) }}">編集</a>
                                        </div>
                                        <div>
                                            <a href="{{ action('Admin\CycleController@delete', ['id' => $spot->id]) }}">削除</a>
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