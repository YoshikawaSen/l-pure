module Main where

import Prelude

import Data.Number (pi, sqrt)
import Effect (Effect)
import Effect.Console (logShow)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)

circleArea :: Number -> Number
circleArea r = r * r * pi

main :: Effect Unit
main = do
  logShow $ circleArea 2.0
  logShow $ diagonal 3.0 4.0
