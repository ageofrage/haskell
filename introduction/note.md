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

haskell platform がおすすめされていたが、[この記事のコメントによると stack がいい](https://qiita.com/takehilo/items/7b65d32e47510cd1fe48#comment-8c965688a5a7db364818)らしい（よく見るヤギの人だった）

```sh
brew install stack

# replを動かしてhelloWorld.hsファイルをロード
stack ghci
ghci> :l helloWorld
```

### メンターと話したこと

stack に関連ライブラリとかコマンドとか入ってる。とりあえずこれで正解。
haskell は型に厳密なので、ライブラリのバージョンが上がったときに不整合起きやすい。
今は stackage。stack.yml のバージョンを変えると色々依存関係を解決してくれる。

- [stackage](https://www.stackage.org/)
- [stack の便利な機能](https://haskell.e-bigmoon.com/stack/tips/script-interpreter.html)
- [ghcup を使う場合](https://zenn.dev/autotaker/articles/haskell-setup-2021) 最小の構成 -> product レベルとかではいいかも？

## わからないところ

- 「何であるか」の例がもっと欲しい
  - 宣言的に what を書く。アルゴリズムをそのまま書ける。
  ```hs
  primes = filterPrime [2..]
  where filterPrime (p:xs) =
          p : filterPrime [x | x <- xs, x `mod` p /= 0]
  ```
  - [アルゴリズム一覧](https://github.com/TheAlgorithms/Haskell)
- 副作用もたない場合、DB から値を取るのはどういう扱い？
  - 副作用を扱えないわけではなく、副作用を扱う型を用意してある。（IO モナド）
- js だと yield 関数は遅延評価？
  - ジェネレーター
- `main` って index.js 的な？
  - entry point (c 言語とかでも同じ)
- ロードはできたけど、`Hello World!` を表示してくれないなー
  - module 定義して、関数を実行する必要があった

## 次やること

希望４章まで（高階関数の手前、クイックソートとか）
最低２章まで
