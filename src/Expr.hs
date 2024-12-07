module Expr where

data Expr
  = Val Int
  | Add Expr Expr
  | Mult Expr Expr
  | Subtr Expr Expr
  deriving (Show)

ebal :: Expr -> Int
ebal (Val i) = i
ebal (Add a b) = ebal a + ebal b
ebal (Mult a b) = ebal a * ebal b
ebal (Subtr a b) = ebal a - ebal b

