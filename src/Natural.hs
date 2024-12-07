module Natural where

data Nat
  = Zero
  | Succ Nat
  deriving (Eq, Show, Ord)

areEqual :: Nat -> Nat -> Bool
areEqual a b = a == b

succ :: Nat -> Nat
succ = Succ

prev :: Nat -> Nat
prev Zero = undefined
prev (Succ n) = n

isZero :: Nat -> Bool
isZero Zero = True
isZero _ = False

add :: Nat -> Nat -> Nat
add Zero a = a
add a Zero = a
add a b = add (Succ a) (prev b)

