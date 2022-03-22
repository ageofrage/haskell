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
```
