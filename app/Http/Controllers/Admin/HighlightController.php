<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Course;
use App\Highlight;
use Storage;

class HighlightController extends Controller
{
        public function add(Request $request)
  {
      return view('admin.highlight.add', ['id' => $request->id]);
  }
  
      public function create(Request $request)
  {
      $highlight = new Highlight;
    
      $form = $request->all();
    
      $path = $request->file('image')->store('public/image/highlight');
      $highlight->image_path = basename($path);
      
      $path = $request->file('image_n')->store('public/image/highlight/number');
      $highlight->number_image_path = basename($path);
      
      unset($form['_token']);
      unset($form['image']);
      unset($form['image_n']);

      $highlight->fill($form);
    
      $highlight->save();
    
      return redirect('admin/highlight/add?id=' . $request->course_id);
  }
  
    public function index(Request $request)
  {
    //   dd($request->all());
      $course = Course::find($request->id);

      return view('admin.highlight.index', compact('course'));
  }
  
    public function edit(Request $request)
  {
      $highlight = Highlight::find($request->id);
      
      return view('admin.highlight.edit', ['highlight' => $highlight]);
  }
  
    public function update(Request $request)
  {
      $highlight = Highlight::find($request->id);
      $form = $request->all();
      
      if($request->hasFile('image')) {
            Storage::delete('public/image/highlight'. $highlight->image_path);
            $path = $request->file('image')->store('public/image/highlight');
            $highlight->image_path = basename($path);
       }
       
      if($request->hasFile('image_n')) {
            Storage::delete('public/image/highlight/number'. $highlight->number_image_path);
            $path = $request->file('image_n')->store('public/image/highlight/number');
            $highlight->number_image_path = basename($path);
       }
       
       unset($form['_token']);
       unset($form['image']);
       unset($form['image_n']);

       $highlight->fill($form);
     
       $highlight->save();

       return redirect('admin/highlight/index?id=' . $highlight->course_id);
  }
  
  public function delete(Request $request)
  {
        $highlight = Highlight::find($request->id);
        $course_id = $highlight->course_id;
        $highlight->delete();
        return redirect('admin/highlight/index?id=' . $course_id);
  }
  


}
