{-# LANGUAGE OverloadedStrings #-}
module Views where

import Lucid

empty_ :: Html ()
empty_ = ""

page :: Html ()
page =
  html_ $ do
    body_ $ do
      script_ [src_ "./hello.js"] empty_