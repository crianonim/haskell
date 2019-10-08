module Chapter2.FirstFunctions where

firstOrEmpty::[[Char]]->[Char]
firstOrEmpty lst = if not (null lst) then head lst else "empty"

lst1 +++ lst2 = if null lst1 {-check empytnes -}
    then lst2 -- base case
    else (head lst1):(tail lst1 +++ lst2)

{-
Trace of execution:
[1,2] +++ [3,4] => 1:([2]+++[3,4]) => 1:(2:([]+++[3,4]))=> 1:(2:([3,4])) => [1,2,3,4]
-}

reverse2 list = if null list
    then []
    else reverse2 (tail list) +++ [head list]

