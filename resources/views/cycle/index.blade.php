@extends('layouts.admin')
@section('title', 'サイクリスト向け日光観光サイト')

@section('content')

    <nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">
                <span></span>
                <span></span>
                <span></span>
            </span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#top">Ｔｏｐ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#hp">このサイトについて</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about_nkkou">日光について</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#course">コース紹介</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#temperature">年間の気温</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#four_seasons">日光の四季</a>
                </li>
            </ul>
        </div>
    </nav>
    
    
    <div>
    <img id="top" class="top" width="1680px" src="{{ asset('storage/image/top/top01.jpg')}}">
    <div class="box" width="1680px" id="hp">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="text-center">
                <div class="hp">
                <p>ロードバイク乗りに向けて、日光を走ったことがある人にも</p>
                <p>まだ走ったことがない人にも</p>
                <p>日光の魅力やコースの紹介をするために作成しました。</p>
                </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="container">
                <div class="text-center">
                    <h3 id="about_nkkou">日光について</h3>
                    <p>テキスト</p>
                </div>
                
                <div class="text-right">
                    <a href=" {{ url('cycle/more') }}">More</a>
                </div>
                
                
                <div class="text-center">
                    <h3 id="course">コース紹介</h3>
                    @php $i = 0; @endphp
                    @foreach($items as $item)
                    @if($i % 2 == 0)
                    
                    <div class="card-group mx-auto" style="max-width: 800px">
                      　<div class="card">
                        　<img class="card-img-top" height="220px" src="{{ asset('storage/image/course/' . $item->image_path) }}">
                      　</div>
                      　<div class="card">
                            <div class="card-body">
                                <div class="text-left">
                                    
                                    <ul style="list-style: none;">
                                    　   <h5>{{$item->name}}</h5>
                                      　 <li>距離</li>
                                            <div class="text-right">
                                          　<p>{{$item->mileage}}</p>
                                          　</div>
                                      　 <li>獲得標高</li>
                                            <div class="text-right">
                                          　<p>{{$item->elevation}}</p>
                                          　</div>
                                    </ul>
                                </div>
                                
                                <div class="text-right">
                                    <a href=" {{ url('cycle/show', [$item->id]) }}">詳しく見る</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @else
                    
                    <div class="card-group mx-auto" style="max-width: 800px">
                      　<div class="card">
                            <div class="card-body">
                                <div class="text-left">
                                    
                                    <ul style="list-style: none;">
                                    　   <h5>{{$item->name}}</h5>
                                      　 <li>距離</li>
                                            <div class="text-right">
                                          　<p>{{$item->mileage}}</p>
                                          　</div>
                                      　 <li>獲得標高</li>
                                            <div class="text-right">
                                          　<p>{{$item->elevation}}</p>
                                          　</div>
                                    </ul>
                                </div>
                                
                                <div class="text-right">
                                    <a href=" {{ url('cycle/show', [$item->id]) }}">詳しく見る</a>
                                </div>
                            </div>
                        </div>
                      　<div class="card">
                        　<img class="card-img-top" height="220px" src="{{ asset('storage/image/course/' . $item->image_path) }}">
                      　</div>
                    </div>
                    @endif
                    @php $i ++; @endphp
                    @endforeach


                    <div class="text-center">
                        <h3 id="temperature">年間の気温</h3>
                        <img class="temperature" src="{{ asset('storage/image/気温.png')}}">
                        <p>日光における気候の特徴として、比較的高所の土地にあるため、一年を通して全体的に冷涼な気候で最も寒い1月の平均最低気温は-7c°。</p>
                        <p>8月の平均最高気温も26c°となっており避暑地としては良い場所です。</p>
                        <p>例年紅葉の見頃である9月下旬〜10月下旬の気温は1桁代になることが多いため、冬の服装で来ることを推奨します。</p>
                        <p>秋の終わりから春先まで(12月中旬〜4月上旬)には路面凍結の恐れ及び積雪があるため冬用タイヤ、チェーンの装着が必須になります。</p>
                        <p>また、中禅寺湖を進んだ先にある金精峠は12月下旬から4月下旬まで冬季通行止めとなっています。</p>
                    </div>
                    
                    <div class="text-center">
                        <h3 id="four_seasons">日光の四季</h3>
                        <div class="row">
                            <div class="image col-md-3 text-left mt-4">
                                <img width="240px" height="240px" src="{{ asset('storage/image/top/haru.jpg')}}"></a>
                            </div>
                            
                            <div class="text col-md-8">
                                <div class="body mt-3">
                                    <div class="p" style="height: 240px">
                                    <p>日光市街の平均気温は9.6℃。奥日光の平均気温は4.8℃。</p>
                                    <p>日光の春は寒く、3月中旬まで降雪があります。</p>
                                    <p>3月までは日光の天気予報を見て、降雪がないかやライブカメラをチェックして道路の状況を確認してから行くことをおすすめします。</p>
                                    <p>いろは坂など主要な道路は除雪をしますが、凍結していることがあるのでダウンヒルでは十分に気を付けてください。</p>
                                    <p>男体山の残雪が美しいので是非、明知平から雄大な姿を眺めてみてください。</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="image col-md-3 text-left mt-4">
                                <img width="240px" height="240px" src="{{ asset('storage/image/top/natu.jpg')}}"></a>
                            </div>
                            
                            <div class="text col-md-8">
                                <div class="body mt-3">
                                    <div class="p" style="height: 240px">
                                    <p>日光市街と奥日光共に平均気温は20℃。降水量が多く、湿度も高いです。</p>
                                    <p>朝晩は気温が下がり日中でも曇りだと涼しく感じるので羽織るものがあると安心です。</p>
                                    <p>122号を走ると沢入トンネルの先が日光市ですが、トンネルを抜けると空気がひんやりとしているので日光へ来たことを肌で感じさせてくれます。</p>
                                    <p>6月はクリンソウ、7月はニッコウキスゲが咲き自然を満喫できます。</p>
                                    <p>かき氷の名産地なので、厳しい寒さの中で作られた透明度の高い天然氷のかき氷を召し上がってみてはいかがでしょう。</p>
                                    <p>ふわふわの口どけ、こだわりのシロップ、どれも感動的な美味しさです。</p>
                                    </div>
                                </div>
                            </div>

                            <div class="image col-md-3 text-left mt-4">
                                <img width="240px" height="240px" src="{{ asset('storage/image/top/aki.jpg')}}"></a>
                            </div>
                            
                            <div class="text col-md-8">
                                <div class="body mt-3">
                                    <div class="p" style="height: 240px">
                                    <p>日光市街の平均気温は13℃。奥日光の平均気温は11℃。</P>
                                    <p>紅葉の名所として有名な日光は、例年10月中旬から見頃を迎えます。</p>
                                    <p>高低差がある土地なので9月下旬から11月下旬まで紅葉を楽しむことができます。</p>
                                    <p>いろは坂は渋滞するので早めに出発することをおすすめします。</p>
                                    <p>風がなければ湯ノ湖で鮮やかに色づいた紅葉のリフレクションを見ることができ、たくさんのフォトスポットがあります。</p>
                                    <p>いろは坂や中禅寺湖周辺のメジャーな場所もいいですが、山王林道のカラマツの美しさは圧巻で行く先も来た道を振り返っても見とれてしまうほどです。</p>
                                    </div>
                                </div>
                            </div>

                            <div class="image col-md-3 text-left mt-4">
                                <img width="240px" height="240px" src="{{ asset('storage/image/top/huyu.jpg')}}"></a>
                            </div>
                            
                            <div class="text col-md-8">
                                <div class="body mt-3">
                                    <div class="p" style="height: 240px">
                                    <p>日光市街の平均気温は2℃。奥日光の平均気温は-2.5℃。</p>
                                    <p>12月から2月までは非常に降雪が多くなります。</p>
                                    <p>金精峠は12月下旬から4月下旬まで冬季通行止めになります。</p>
                                    <p>冬はロードバイクで走ることはできませんが、一面雪景色になった日光の風景はいつもと違った趣がありますので観光もおすすめです。</p>
                                    <p>滝が凍り氷瀑となるのでとても神秘的な姿を見ることができます。</p>
                                    <p>夜は雲がなければ空には満点の星が広がり、小さな星まで瞬いて光害がない場所でしか見られない星の数に驚かれると思います。</p>
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    
                    
                    
                </div>
                
            </div>
        </div>
    
    </div>
    </div>


@endsection