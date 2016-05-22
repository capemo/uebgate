{-# LANGUAGE OverloadedStrings #-}

-- |This module defines how the 'persistent' library's back end is configured.
-- Other modules should not import anything Sqlite-specific
module Config where

import Database.Persist.Postgresql

-- |Define how to connect to an Sqlite database. The database file will be
-- named "database", and 100 connections will be allowed. By defining an
-- `SqliteConf` we automatically get an instance for `PersistConfig`. This
-- is needed by a few functions from the 'persistent' library.
persistConfig :: PostgresConf
persistConfig = PostgresConf "database" 100
