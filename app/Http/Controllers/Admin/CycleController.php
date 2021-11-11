<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Spot;
use Storage;

class CycleController extends Controller
{
  public function add()
  {
      return view('admin.cycle.add');
  }
  
  public function create(Request $request)
  {
      $spot = new Spot;
    
      $form = $request->all();
    
      $path = $request->file('image')->store('public/image/spot/large');
      $spot->image_path = basename($path);
      $path = $request->file('image_s')->store('public/image/spot/small');
      $spot->image_path_s = basename($path);

    
    
      unset($form['_token']);
      unset($form['image']);
      unset($form['image_s']);
      
      $spot->fill($form);
    
      $spot->save();
    
      return redirect('admin/cycle/add');
  }
  
  public function index(Request $request)
  {
      $spots = Spot::all();
      
      return view('admin.cycle.index', compact('spots'));
  }
  
  public function edit(Request $request)
  {
      $spot = Spot::find($request->id);
      
      return view('admin.cycle.edit', ['spot' => $spot]);
  }
  
  public function update(Request $request)
  {
      $spot = Spot::find($request->id);
      $form = $request->all();
      
      if($request->hasFile('image')) {
            Storage::delete('public/image/spot/large'. $spot->image_path);
            $path = $request->file('image')->store('public/image/spot/large');
            $spot->image_path = basename($path);
       }
       
       if($request->hasFile('image_s')) {
            Storage::delete('public/image/spot/small'. $spot->image_path_s);
            $path = $request->file('image_s')->store('public/image/spot/small');
            $spot->image_path_s = basename($path);
       }
       
       unset($form['_token']);
       unset($form['image']);
       unset($form['image_s']);
      
       $spot->fill($form);
     
       $spot->save();

       return redirect('admin/cycle/index');
  }
  
  public function delete(Request $request)
  {
        $spot = Spot::find($request->id);
        $spot->delete();
        return redirect('admin/cycle/index');
  }
  
  
  
}
