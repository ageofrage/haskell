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
