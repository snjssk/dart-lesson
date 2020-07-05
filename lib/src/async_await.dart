import 'dart:async';

// async, await で関数を実行
void async_await() async {
  print('start');

  String fileContent = await delayFunc();
  print('The content of the file is --> $fileContent');

  print('end');
}

// returnする値はFutureの文字列を指定
Future<String> delayFunc() {

  // 遅延する処理
  var result = Future.delayed(Duration(seconds: 3), () {
    return 'download';
  });

  return result;
}