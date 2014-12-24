{-# LANGUAGE TypeOperators #-}

module Main
    ( main
    ) where

import Control.Applicative ((<$>))

-- This is 謎 data type
data Nazo = Int :~ String

instance Show Nazo where
    show (n :~ s) = show n ++ ": " ++ s

main :: IO ()
main = do
    [n, s] <- words <$> getLine
    print (read n :~ s)
