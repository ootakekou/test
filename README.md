# フィックスポイント様　プログラミング試験問題

## 設問1
Q.監視ログファイルを読み込み、故障状態のサーバアドレスとそのサーバの故障期間を出力するプログラムを作成せよ。
出力フォーマットは任意でよい。
なお、pingがタイムアウトした場合を故障とみなし、最初にタイムアウトしたときから、次にpingの応答が返るまでを故障期間とする。

A.まず,
test.rbにrequire 'logger'を記述しログを出力するように行いました。
