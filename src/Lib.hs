{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import Web.Scotty
import Network.Wai.Middleware.Static
import Views
import Lucid (renderText)

someFunc :: IO ()
someFunc = scotty 3000 $ do
  middleware (staticPolicy (addBase "static"))
  get "/" $ do
    html $ renderText page