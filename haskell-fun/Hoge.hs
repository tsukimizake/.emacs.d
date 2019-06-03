{-# LANGUAGE OverloadedStrings #-}
module Hoge where
import Foreign.Emacs

hoge :: Int -> Int -> Int
hoge = (+)

-- import Data.Attoparsec.Number
-- hoge :: Number -> Number -> Emacs Lisp
-- hoge a b = eval [Symbol "+",  Number a, Number b]

