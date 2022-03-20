# haskell とは

## 要約

- 純粋関数型プログラミング言語 ↔︎ 命令型プログラミング言語
  - 命令型プログラムは命令を実行中、状態を変更できる _e.g._`for(a=5;a<lim;a++)`
  - 何をするかではなく、何であるかを伝える
  - 変数の値は変更不可
  - 副作用を持たない
  - 参照透過性（同じ値を返す）
  - 遅延評価（必要になるまで返さない）
  - 静的型付言語

## 環境構築

haskell patform がおすすめされていたが、[この記事のコメントによると stack がいい](https://qiita.com/takehilo/items/7b65d32e47510cd1fe48#comment-8c965688a5a7db364818)らしい（よく見るヤギの人だった）

```sh
brew install stack

# replを動かしてhelloWorld.hsファイルをロード
stack ghci
ghci> :l helloWorld
```

## わからないところ

- 「何であるか」の例がもっと欲しい
- 副作用もたない場合、DB から値を取るのはどういう扱い？
- js だと yield 関数は遅延評価？
- `main` って index.js 的な？
- ロードはできたけど、`Hello World!` を表示してくれないなー
