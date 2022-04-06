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