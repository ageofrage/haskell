# 型を信じろ！

強力な型推論が特徴

## 2.1 明示的な型宣言

:t で型を教えてくれる

```hs
ghci> :t 'a'
'a' :: Char
```

`::` 「の型を持つ。」という意味

関数の型付け

```hs
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
```

## 2.2 一般的な haskell の型

- Int は有界(min, max がある。-2^63 ~ 2^63 - 1)
- Integer は有界でない
- float
- Double
- Bool
- Char

## 2.3 型変数

- 型名は大文字から始まる
- 型変数はジェネリクスに似てるやつ
- 型変数を用いた関数は多相的関数という

```hs
ghci> :t fst
fst :: (a, b) -> a
```
