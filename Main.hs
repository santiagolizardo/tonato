
import ToNato

import System.IO (hPutStrLn, stderr)
import Control.Monad (when)
import System.Environment (getProgName, getArgs)
import System.Exit (exitFailure)

main :: IO()
main = do
  args <- getArgs
  when (length args /= 1) $ do
    progName <- getProgName
    hPutStrLn stderr $ "usage: " ++ progName ++ " <string>"
    exitFailure

  let string = head args
  putStrLn (string ++ " --> " ++ (toNato string))

