module JumpTheFive (
    encrypt,
    encrypt',
    preprocess
  ) where

import Data.Char (toUpper)
import Control.Parallel.Strategies (parMap, rseq)

encrypt :: String -> String
encrypt = parMap rseq (encrypt' . preprocess)

preprocess :: Char -> Char
preprocess c
  | c `elem` ['a' .. 'z'] = (preprocess . toUpper) c
  | otherwise = case c of
    'A' -> '2'
    'B' -> '2'
    'C' -> '2'
    'D' -> '3'
    'E' -> '3'
    'F' -> '3'
    'G' -> '4'
    'H' -> '4'
    'I' -> '4'
    'J' -> '5'
    'K' -> '5'
    'L' -> '5'
    'M' -> '6'
    'N' -> '6'
    'O' -> '6'
    'P' -> '7'
    'Q' -> '7'
    'R' -> '7'
    'S' -> '7'
    'T' -> '8'
    'U' -> '8'
    'V' -> '8'
    'W' -> '9'
    'X' -> '9'
    'Y' -> '9'
    'Z' -> '9'
    c' -> c'

encrypt' :: Char -> Char
encrypt' '1' = '9'
encrypt' '2' = '8'
encrypt' '3' = '7'
encrypt' '4' = '6'
encrypt' '5' = '0'
encrypt' '6' = '4'
encrypt' '7' = '3'
encrypt' '8' = '2'
encrypt' '9' = '1'
encrypt' '0' = '5'
encrypt' x = x
