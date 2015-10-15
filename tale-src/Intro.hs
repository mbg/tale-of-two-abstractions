import Control.Monad.State

data SqlDatabase
data SqlReader

type MyDatabase = State SqlDatabase
runQuery :: String -> MyDatabase SqlReader
runQuery = undefined

data Map k v
data Recipe

data Model = MkModel (Map Int Recipe)
type DbModel = StateT Model MyDatabase

saveChanges :: DbModel ()
saveChanges = do
    m <- get
    let
        query = undefined
    lift (runQuery query)
    return ()