# Haskell

## Get Programming with Haskell

### Hello world
```haskell
hello.hs
--My first program
main = do
  print "Hello, world"
```

Runnig `ghc hello.hs` will produce a few files, one of them executable `hello`

### GHCi
```
$ ghci
GHCi, version 8.6.5...
Prelude>
```

To interact with your program:

```
$ ghci hello.hs
*Main>
```
or
```
$ ghci
Prelude>:l hello.hs
*Main>
```
Then call function written `main`


## I'm following a book Practical Haskell.

To start a project: (in dir you want to create)
```
$ cabal init
```
Aswer questions, mostly default, but choose `src` and library (it doeasn't matter yet)

## Modules
Modules are files with header
```haskell
module Chapter2.Section2.Example where
```
that reflect file structure `src/Chapter2/Section2/Example.hs`

In GHCi you load and compile with `:l src/Chapter2/Section2/Example.hs`

