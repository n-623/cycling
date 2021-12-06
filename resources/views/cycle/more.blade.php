@extends('layouts.front')
@section('title', '観光記事一覧')

@section('content')

    <img src="{{ asset('storage/image/more_01.jpg')}}">

    <div class="container">
        
        
        <div class="row">
             <div class="col text-center">
                <form method="post" action="{{ action('CycleController@more')}}">
                    @csrf
                    
                    <div class="form-group">

                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="genre[]" value="建物">
                            <label class="form-check-label" for="inlineCheckbox1">建物</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="genre[]" value="自然">
                            <label class="form-check-label" for="inlineCheckbox2">自然</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="genre[]" value="ダム">
                            <label class="form-check-label" for="inlineCheckbox1">ダム</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="genre[]" value="ランチ">
                            <label class="form-check-label" for="inlineCheckbox2">ランチ</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="genre[]" value="スイーツ">
                            <label class="form-check-label" for="inlineCheckbox2">スイーツ</label>
                        </div>
                        
                    </div>
                    
                    <div class="form-group row">
                      　<label class="col-sm-4 col-form-label">キーワード</label>
                      　<div class="col-sm-5">
                            <input type="text" class="form-control" placeholder="検索したい名前を入力してください"　name="name" value="">
                      　</div>
                      　<div class="col-sm-3">
                            <input type="submit" value="検索" class="btn btn-outline-dark">
                      　</div>
                    </div>
                </form>
            </div>
        </div>
            


                

        <div class="row">
            <div class="posts col-md-8 mx-auto mt-3">
                @foreach($spots as $spot)
                    <div class="post">
                        <div class="row">
                            
                            <div class="image col-md-3 text-left mt-4">
                                @if ($spot->image_path_s)
                                    <a href="{{ action('CycleController@plus', ['id' => $spot->id]) }}">
                                    <img width="150px" src="{{ asset('storage/image/spot/small/' . $spot->image_path_s) }}"></a>
                                @endif
                            </div>
                            
                            <div class="text col-md-8">
                                <div class="name">
                                    {{ str_limit($spot->name, 150) }}
                                </div>
                                <div class="body mt-3">
                                    {{ str_limit($spot->body, 1000) }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr color="#c0c0c0">
                @endforeach
                {{ $spots->links() }}
            </div>
        </div>
    </div>
    
    <img src="{{ asset('storage/image/more_02.jpg')}}">

    

@endsection