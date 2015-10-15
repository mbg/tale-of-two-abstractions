{-# LANGUAGE FlexibleInstances #-}

import Control.Monad.Identity
import Control.Monad.State

class SqlDatabaseCtx m where
    runQuery :: String -> m SqlReader

data SqlDatabase
data SqlReader

type MyDatabase = State SqlDatabase

instance SqlDatabaseCtx MyDatabase where
    runQuery = undefined

data Map k v
data Recipe

data Model = MkModel (Map Int Recipe)
type DbModel = StateT Model MyDatabase

instance SqlDatabaseCtx DbModel where
    runQuery query = lift (runQuery query)

saveChanges :: DbModel ()
saveChanges = do
    m <- get
    let
        query = undefined
    runQuery query
    return ()