--hello.hs
import Data.List
main = do
    print "Hello, Jan!"

calcChange owed given= if change >0 
    then change 
    else 0
    where change=given-owed

inc n = n +1
double n = n * 2
square n = n * n

isEven n = if even n 
    then n -2
    else 3*n+1

squareOrSum x y = if sumSquare > squareSum 
    then sumSquare
    else squareSum
    where sumSquare=x*x+y*y
          squareSum=(x+y)*(x+y)

squareOrSum2 x y =(\sumSquare squareSum ->
        if sumSquare > squareSum
            then sumSquare
            else squareSum
        ) (x^2+y^2) ((x+y)^2)

doubleDouble x = dubs *2
        where dubs=x*2

doubleDouble2 x = (\d ->d * 2) (x*2)

squareOrSum3 x y = let sumSquare=(x^2+y^2)
                       squareSum=((x+y)^2)
                    in
                    if sumSquare > squareSum
                        then sumSquare
                        else squareSum

overwrite x = let x=4
              in
                let x=3
                 in
                    let x=2
                    in 
                        x
overwrite2 x = (\x ->
                (\x->
                (\x -> x) 4
                 ) 3
                ) 2


inc2 = (\x -> x + 1)
double2 = (\x -> x * 2)
square2 = (\x -> x^2)

ifEven myfunc x = if even x
    then myfunc x
    else x

ifEvenInc x= ifEven inc x

ifEvenCube x = ifEven (\x-> x^3) x

--tuple
author=("Will","Kurt")

names=[("Ian", "Curtis"),("Bernard","Summer"),("Peter","Hook"),("Stephen","Morris")]

-- sort names gives by first name

compareByLastNames name1 name2 = if lastName1 > lastName2
    then GT
    else if lastName1 < lastName2
        then LT
        else EQ
    where lastName1 = snd name1
          lastName2 = snd name2


--now: sortBy compareByLastNames names
