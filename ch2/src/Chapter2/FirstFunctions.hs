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

maxmin list = if null (tail list)
    then (head list,head list)
    else ( if (head list) > fst (maxmin (tail list)) 
        then head list
        else fst (maxmin(tail list))
        
        , if (head list ) < snd (maxmin (tail list))
            then head list
            else snd (maxmin (tail list))
    )

maxmin2 list = let h = head list
        in if null (tail list) 
            then (h,h)
            else (if h > t_max then h else t_max
            ,if h<t_min then h else t_min)
            where t = maxmin2 (tail list) {- has to start in same column -}
                  t_max=fst t
                  t_min=snd t