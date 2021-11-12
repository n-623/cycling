<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        
        <title>@yield('title')</title>
        
        <script src="{{ secure_asset('js/app.js') }}" defer></script>
        <script>
            // googleMapsAPIを持ってくるときに,callback=initMapと記述しているため、initMap関数を作成
            function initMap() {
                // welcome.blade.phpで描画領域を設定するときに、id=mapとしたため、その領域を取得し、mapに格納します。
                map = document.getElementById("map");
                let empire = {{ $spot->map }};
                // オプションを設定
                opt = {
                    zoom: 13, //地図の縮尺を指定
                };
                // 地図のインスタンスを作成します。第一引数にはマップを描画する領域、第二引数にはオプションを指定
                mapObj = new google.maps.Map(map, opt);
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?language=ja&region=JP&key=AIzaSyAgNiDaw6GbJSfgGQQYPzkf7xvIlJfCtYk&callback=initMap" async defer></script>

        
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
        <link href="{{ secure_asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ secure_asset('css/more.css') }}" rel="stylesheet">
        <link href="{{ secure_asset('css/plus.css') }}" rel="stylesheet">

    </head>
    
    <body>
        <div id="app">
            
            <main>
                @yield('content')
            </main>
        </div>
    </body>
    @yield('js')
    
</html>