module Paths_uebgate (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/capemo/.cabal/bin"
libdir     = "/home/capemo/.cabal/lib/x86_64-linux-ghc-7.10.3/uebgate-0.0.0-8rU9eldiTunH2bSqgfYLDu"
datadir    = "/home/capemo/.cabal/share/x86_64-linux-ghc-7.10.3/uebgate-0.0.0"
libexecdir = "/home/capemo/.cabal/libexec"
sysconfdir = "/home/capemo/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "uebgate_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "uebgate_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "uebgate_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "uebgate_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "uebgate_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
