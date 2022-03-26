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

## 1.3 リスト入門

- リストは同じ型からのみ

```hs
ghci> let lostNumbers = [4,8,15,16,23,42]
ghci> lostNumbers
[4,8,15,16,23,42]
```

### 連結

```hs
ghci> [1,2,3] ++ [4,5,6]
[1,2,3,4,5,6]
```

- ++ 演算子は最初のリストを最後まで走査するので、最初のリストが長いと重い
- リストの先頭に何か追加するには :演算子(cons 演算子)を使う

```hs
ghci> 5: [1,2,3,4]
[5,1,2,3,4]
```

- こっちは引数のうち、1 つはリスト以外をとる
- haskell では`[1,2,3]`は`1:2:3:[]`の糖衣構文
- 値取り出しは!!

```hs
ghci> [1,2,3,4] !! 2
3
```

- list in list も同じ型でないといけない
- haskell ではリストの比較が可能

```hs
ghci> [1,2,3] > [1,2,2]
True
ghci> [1,2,3] > [1,2,3]
False
ghci> [1,2,3] > [1,2,4]
False
ghci> [1,2,3] == [1,2,3]
True
ghci> [1,2,3] > [1,1]
True
ghci> [1,2,3] > [1,3]
False
ghci> [1,2,3] == [1,3]
False
```

### さらなるリスト操作

```hs
ghci> head [1,2,3]
1
ghci> tail [1,2,3]
[2,3]
ghci> last [1,2,3]
3
ghci> init [1,2,3]
[1,2]
ghci> head []
*** Exception: Prelude.head: empty list
```

#### 📝

- head - last
- init - tail
- これらの関数に空のリストは渡せない

length, reverse, take

```js
ghci> length []
0
ghci> length [5,4]
2
ghci> null [1,2,3]
False
ghci> null []
True
ghci> reverse [1,2,3]
[3,2,1]
ghci> reverse []
[]
ghci> take 2 [1,2,3]
[1,2]
ghci> take 0 [1,2,3]
[]
ghci> take 5 [1,2,3]
[1,2,3]
```

## 1.4 レンジでチン！

リストを生成する

```hs
ghci> [1..20]
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
ghci> ['a'.. 'z']
"abcdefghijklmnopqrstuvwxyz"
ghci> ['a'.. 'Z']

<interactive>:50:1: warning: [-Wempty-enumerations]
    Enumeration is empty
""
ghci> ['A'.. 'z']
"ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz"
ghci> [2,4..20]
[2,4,6,8,10,12,14,16,18,20]
ghci> ['a', 'c'..'z']
"acegikmoqsuwy"
ghci> [1,2,4,8,16..100]

<interactive>:54:12: error: parse error on input ‘..’
ghci> [20,19..1]
[20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
ghci> [20..1]
[]
ghci> [5,15..10*20]
[5,15,25,35,45,55,65,75,85,95,105,115,125,135,145,155,165,175,185,195]
```

#### 📝

- これは便利 😇
- step は１つまで
- 減少する列は step がないと期待通りにならない

無限数列

```hs
ghci> [2,4..]
-- 無限の数列が作れる
[2,4,6,8...]
ghci> take 10 (cycle[1,2,3,4])
[1,2,3,4,1,2,3,4,1,2]
ghci> take 8 (cycle['w','W', 'w'])
"wWwwWwwW"
ghci> take 8 (repeat['w'])
["w","w","w","w","w","w","w","w"]
```

#### 🤔

```hs
ghci> take 8 (repeat['w'])
["w","w","w","w","w","w","w","w"]
ghci> take 8 (cycle['w'])
"wwwwwwww"
```

なぜ出力が微妙に違う？

数列を作る

```hs
ghci> replicate 8 'w'
"wwwwwwww"
```
