module Chapter2.FirstFunctions where

firstOrEmpty lst = if not (null lst) then head lst else "empty"

