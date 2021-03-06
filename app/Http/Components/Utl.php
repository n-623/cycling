<?php
namespace App\Http\Components;
use Auth;
use \App\User;
/**
* Utlファサードの処理実装クラス
*/
class Utl
{
  /**
   * 改行を<br/>タグに変換(pgsql対応)
   */
  public static function nl2br($str) {
    return str_replace(array('\r\n', "\r\n", "\n", "\r"), '<br/>', $str);
  } 
  
  /**
   * \r\nを除去
   */
  public static function rmnl($str) {
    return str_replace(array('\r\n', "\r\n", "\n", "\r"), '', $str);
  }
  
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