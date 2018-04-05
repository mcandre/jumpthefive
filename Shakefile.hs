import Development.Shake
import Development.Shake.FilePath
import System.Directory as Dir

main :: IO ()
main = do
  homeDir <- Dir.getHomeDirectory

  shakeArgs shakeOptions{ shakeFiles="dist" } $ do
    want ["install"]

    phony "install" $
      need ["dist/bin/jumpthefive" <.> exe]

    "dist/bin/jumpthefive" <.> exe %> \out ->
      cmd_ "cabal" "install" "--bindir" "dist/bin"

    phony "hlint" $
      cmd_ "hlint" "."

    phony "lint" $
      need ["hlint"]

    phony "uninstall" $
      removeFilesAfter homeDir ["/.cabal/bin/jumpthefive" <.> exe]

    phony "clean" $
      removeFilesAfter "dist" ["//*"]
