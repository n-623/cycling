<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
      /**
    * null か 空文字であるかの真偽値を返す
    *
    * @param  オブジェクト
    * @return null か 空文字である場合はtrue、それ以外の場合はfalse
    */
    public static function isNullOrEmpty($object) {
      return is_null($object) || ('' == $object);
    }  
  
   /**
    * 画像ファイルをAWS S3にアップロードする
    *
    * @param  リクエストから取り出した画像オブジェクト
    * @return 一意となる画像ファイル名
    */
    protected static function storeImage($path, $imageObj) {
  
      $imageName = '';
      if (!self::isNullOrEmpty($imageObj)) {
        $imageName = Storage::disk(env('FILESYSTEM_DRIVER'))->putFile($path, $imageObj, 'public');
      }
      return $imageName;
    }
  
    /**
    * ストレージの画像ファイルを削除する
    *
    * @param  削除する画像のファイル名
    * @return void
    */
    protected static function deleteImage($path, $filename) {
  
      if (!self::isNullOrEmpty($filename)) {
        $filePath = $path . '/' . $filename;
        Storage::disk(env('FILESYSTEM_DRIVER'))->delete($filePath);
        //Storage::disk('local')->delete($filePath);
      }
    }
  
    /**
    * ストレージの画像ファイルを入れ替える
    *
    * @param  リクエストから取り出した画像オブジェクト
    * @param  削除する画像のファイル名
    * @return 入れ替えた画像の一意となるファイル名
    */
    protected static function swapImage($path, $imageObj, $filename) {
  
      // 画像を保存
      $imageName = self::storeImage($path, $imageObj);
  
      // 保存に成功した場合、入れ替え対象の画像を削除する
      //if (!self::isNullOrEmpty($imageName) && !self::isNoImage($filename)) {
        self::deleteImage($path, $filename);
      //}
      return $imageName;
    }
    
}
