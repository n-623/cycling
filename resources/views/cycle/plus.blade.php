@extends('layouts.front')
@section('title', '観光記事詳細')

@section('content')

    <img src="{{ Utl::imgPath('', 'more_01.jpg')}}">

    <div class="container">

        <div class="row">
            <div class="col text-center">
                <form method="get" action="{{ action('CycleController@search')}}">
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
            <div class="col-md-10 mx-auto">
                <div class="relative">
                  <img src="{{ Utl::imgPath('', 'plus.jpg')}}" alt="" />
                  <img src="{{ Utl::imgPath('spot/large', $spot->image_path) }}" alt="" class="absolute" />
                  
                　<ul style="list-style: none;">
                　   <h4>{{$spot->name}}</h4>
                  　 <li>住所</li>
                  　 <p>{{$spot->address}}</p>
                  　 <li>電話番号</li>
                  　 <p>{{$spot->tel}}</p>
                  　 <li>営業時間</li>
                  　 <p>{{$spot->hour}}</p>
                  　 <li>休み</li>
                  　 <p>{{$spot->holiday}}</p>
                  　 <li>ホームページ</li>
                  　 <p>{{$spot->url}}</p>
                　</ul>                  
                </div>
            </div>
        </div>
        
        
        
        <div id="map" style="height:500px"></div>

        
        
        
    </div>
    
    <img src="{{ Utl::imgPath('', 'more_02.jpg')}}">


@endsection