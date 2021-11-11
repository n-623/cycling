<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Spot;
use Storage;

class CycleController extends Controller
{

  public function index()
  {
    return view('cycle.index');
  }
  
  public function more(Request $reqest)
  {
    $spots = Spot::all();

    
    return view('cycle.more', ['spots' => $spots]);
  }
  

  
  public function search(Request $request)
  {
    $searchWord = $request->input('name');
    $genres = $request->input('genre');

    $query = Spot::query();
    if (isset($searchWord)) {
        $query->where('name', 'like', '%' . self::escapeLike($searchWord) . '%');
    }
    if (isset($genres)) {
        foreach($genres as $genre)
        {
            $query->orWhere('genre', $genre);
        }
    }

    $spots = $query->orderBy('id', 'asc')->paginate(8);
  
    return view('cycle.more', ['spots' => $spots]);

  }
  
  //「\\」「%」「_」などの記号を文字としてエスケープさせる
  public static function escapeLike($str)
  {
    return str_replace(['\\', '%', '_'], ['\\\\', '\%', '\_'], $str);
  }
  
  
  public function plus(Request $request)
  {
    $spot = Spot::find($request->id);
    return view('cycle.plus', ['spot' => $spot]);
  }
  
}
