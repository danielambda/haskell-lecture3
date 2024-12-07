module Product where

type Bread = Bool
type Tomato = Int
type Patty = [Bool]

data Burgir =
  Burgir Bread Tomato Patty Bread

data NamedBurgir = NamedBurgir
  { burgirTopBread :: Bread
  , burgirTomato :: Tomato
  , patty :: Patty
  , sause :: Bool
  , burgirBottomBread :: Bread
  }

getBreads :: NamedBurgir -> (Bread, Bread)
getBreads = (,) <$> burgirTopBread <*> burgirBottomBread

type Goool = (Bool, Bool)

type Unit = ()
data Void
