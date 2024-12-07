module Aboba where

data Aboba = Aboba Int String [Bool]

type Board = [(Int, Int)]

type Pair a = (a, a)

newtype Hitler = Hitler Int

data Tree a
  = Leaf a
  | Node (Tree a) (Tree a) a

board :: Board
board = board1

board1 :: [(Int, Int)]
board1 = [(1, 2)]

hitler :: Int -> Tree Int
hitler n = Leaf (n + 1)

class Number a where
  add :: a -> a -> a
  zero :: a

class Parsable a where
  parse :: String -> a

instance Parsable Aboba where
  parse :: String -> Aboba
  parse str = Aboba 0 str []

class Eq a => Ordable a where
  {-# MINIMAL greaterThan, lessThan | lessOrEqThan, greaterOrEqThan #-}
  greaterThan :: a -> a -> Bool
  greaterThan a b = not (lessOrEqThan a b)

  lessThan :: a -> a -> Bool
  lessThan a b = not (greaterOrEqThan a b)

  greaterOrEqThan :: a -> a -> Bool
  greaterOrEqThan a b = not (lessThan a b)
  -- greaterOrEqThan = (not .) .  lessThan

  lessOrEqThan :: a -> a -> Bool
  lessOrEqThan a b = not (greaterThan a b)

-- instance Ordable Aboba where

class Functor f where
  fmap :: (a -> b) -> f a -> f b

