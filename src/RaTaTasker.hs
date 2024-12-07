module RaTaTasker where

data MessageThreadId
data MessageId deriving Show
data ChatId

data UserId = UserId ChatId (Maybe MessageThreadId)

data User = User
  { userTasks :: [String]
  , userMainMessage :: MessageId
  , userVisualConfig :: VisualConfig
  } deriving Show

data VisualConfig = VisualConfig
  { visualNoTasksText :: String
  , visualTasksHeader :: String
  } deriving Show

