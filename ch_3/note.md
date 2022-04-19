# 関数の構文

## 3.1 パターンマッチ

[sayMe.hs](./sayMe.hs)参照

### タプルのパターンマッチ

[addVectors.hs](./addVectors.hs)参照

### リストのパターンマッチとリスト内包表記

```hs
ghci> [a*10|(a,3) <-[(5,4),(8,3)]]
[80]
```

空の配列や要素数が 1 の配列を弾くのが簡単そう

#### 🚨

パターンマッチでは`++`は使えない

### as パターン

値をパターンに分解しつつ、パターンマッチの対象になった値自体も参照したいときに使う

## 3.2 場合分けして、きっちりガード！