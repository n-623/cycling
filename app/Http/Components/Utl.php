<?php
namespace App\Http\Components;
use Auth;
use \App\User;
/**
* Utlファサードの処理実装クラス
* 松田追加
*/
class Utl
{
  
  
  /**
  * StorageTypeがs3であるかの真偽値を返す
  *
  * @param  void
  * @return StorageTypeがs3であるかの真偽値
  */
  public static function isS3() {
    return env('FILESYSTEM_DRIVER') == 's3';
  }
  
  /**
  * 画像へのフルパス取得
  *
  * @param  画像ファイル名
  * @return 画像ファイルへのフルパス
  *         画像ファイル名が空の場合は、画像無しのファイルパスを返す
  */
  public static function imgPath($path, $filename) {
    $add = $path ==  '' ? '' : $path . '/';

    if (self::isS3()) {
      $ret = env('AWS_URL') . '/' . $add . $filename;
    } else {
      $ret = asset('storage/image/' . $add . $filename);
    }
    return $ret;
  }
  
}