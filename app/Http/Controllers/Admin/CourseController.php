<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Spot;
use App\Course;
use App\Highlight;
use Storage;

class CourseController extends Controller
{
    public function add()
  {
      return view('admin.course.add');
  }
  
    public function create(Request $request)
  {
      $course = new Course;
    
      $form = $request->all();
    
      $path = $request->file('image')->store('public/image/course');
      $course->image_path = basename($path);
      $path = $request->file('image_m')->store('public/image/course/map');
      $course->map_image_path = basename($path);
      

      unset($form['_token']);
      unset($form['image']);
      unset($form['image_m']);

      $course->fill($form);
    
      $course->save();
    
      return redirect('admin/course/add');
  }
  
  public function index(Request $request)
  {
      $courses = Course::all();
      
      return view('admin.course.index', compact('courses'));
  }
  
    public function edit(Request $request)
  {
      $course = Course::find($request->id);
      
      return view('admin.course.edit', ['course' => $course]);
  }
  
    public function update(Request $request)
  {
      $course = Course::find($request->id);
      $form = $request->all();
      
      if($request->hasFile('image')) {
            Storage::delete('public/image/course'. $course->image_path);
            $path = $request->file('image')->store('public/image/course');
            $course->image_path = basename($path);
       }
       
      if($request->hasFile('image_m')) {
            Storage::delete('public/image/course/map'. $course->map_image_path);
            $path = $request->file('image_m')->store('public/image/course/map');
            $course->map_image_path = basename($path);
       }
       
       unset($form['_token']);
       unset($form['image']);
       unset($form['image_m']);

       $course->fill($form);
     
       $course->save();

       return redirect('admin/course/index');
  }
  
  public function delete(Request $request)
  {
        $course = Course::find($request->id);
        $course->delete();
        return redirect('admin/course/index');
  }
  


}