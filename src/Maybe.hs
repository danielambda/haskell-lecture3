module Maybe where

f1 :: a -> b -> Maybe a -> Maybe b
f1 = undefined

f2 :: (a -> Maybe b) -> Maybe a -> Maybe b
f2 = undefined

f3 :: Maybe (Maybe a) -> Maybe a
f3 = undefined

f2' :: Maybe a -> (a -> Maybe b) -> Maybe b
f2' = undefined

-- foldl :: (b -> a -> b) -> b -> [a] -> b
mFoldl :: (b -> a -> b) -> b -> Maybe a -> b
mFoldl = undefined

-- foldr :: (a -> b -> b) -> b -> [a] -> b
mFoldr :: (a -> b -> b) -> b -> Maybe a -> b
mFoldr = undefined
