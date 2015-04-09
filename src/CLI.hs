#!/usr/bin/env runhaskell

module Main where

import JumpTheFive (encrypt)

import System.IO ()

main :: IO ()
main = interact encrypt
