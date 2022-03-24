# はじめの一歩

```hs
ghci> 2 + 15
17
ghci> 5 / 2
2.5
ghci> 50 * (100 - 49)
2550
ghci> 5 * -3

<interactive>:6:1: error:
    Precedence parsing error
        cannot mix ‘*’ [infixl 7] and prefix `-' [infixl 6] in the same infix expression
ghci> 5 * (-3)
-15

ghci> true /= false

<interactive>:5:1: error:
    • Variable not in scope: true
    • Perhaps you meant data constructor ‘True’ (imported from Prelude)

<interactive>:5:9: error:
    • Variable not in scope: false
    • Perhaps you meant data constructor ‘False’ (imported from Prelude)
ghci> 5 /= 4
true
ghci> 5.0 == 5
true
```

なぜ `true /= false` はダメ？🤔  
float と int は型エラーにならない？🤔

## 1.1 関数呼び出し

- 関数の適用は全ての演算の中で最も高い優先度
- バッククウォート使うと、関数を中値できる

```hs
-- この2つは同じ
div 5 2
5 `div` 2
```

## 1.2 赤ちゃんの最初の関数

関数定義

```hs
doubleMe x = x + x
doubleMe 5
-- 10
```

- **「基本的で、明らかに正しい関数を組み合わせて、より大きな関数を組み立てる」** がよく目にするパターン

- if 文

```hs
doubleSmallNumber x = if x > 100 then x else x * 2
```

- haskell では全ての関数は値を返す
- if は文ではなく式
- なので else が必ず必要
- シングルクウォートは特になんの意味も持たないので、関数・変数名に使える
- 関数名は大文字で初めてはいけない
- 関数が 1 つも値を受け取らないとき、定義もしく名前とよぶ
