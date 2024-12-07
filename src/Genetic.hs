module Genetic where

data Rng

class Genetic a where
  fitness :: Ord b => a -> b
  crossover :: Rng -> a -> a -> a
  mutate :: Rng -> a -> a

