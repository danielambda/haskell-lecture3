{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use lambda-case" #-}
module Maybe where

data MyMaybe a
  = MyNothing
  | MyJust a

-- takes function from a to b,
-- return function from Maybe a to Maybe b
-- that will return Nothing if the argument is Nothing
fmap' :: (a -> b) -> (Maybe a -> Maybe b)
fmap' f (Just a) = Just (f a)
fmap' _ Nothing = Nothing
-- toMaybe f = \m -> case m of
--   Just a -> Just $ f a
--   Nothing -> Nothing

(=<<) :: (a -> Maybe b) -> Maybe a -> Maybe b
f =<< (Just a) = f a
_ =<< Nothing = Nothing

join :: Maybe (Maybe a) -> Maybe a
join Nothing = Nothing
join (Just Nothing) = Nothing
join (Just (Just a)) = Just a

(>>=) :: Maybe a -> (a -> Maybe b) -> Maybe b
(Just a) >>= f = f a
Nothing >>= _ = Nothing

-- foldl :: (b -> a -> b) -> b -> [a] -> b
-- mFoldl :: (acc -> a -> acc) -> acc -> Maybe a -> acc
mFoldl :: (b -> a -> b) -> b -> Maybe a -> b
mFoldl f acc (Just a) = f acc a
mFoldl _ acc Nothing = acc

-- foldr :: (a -> b -> b) -> b -> [a] -> b
mFoldr :: (a -> b -> b) -> b -> Maybe a -> b
mFoldr = undefined
