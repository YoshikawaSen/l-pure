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
main =
  HA.runHalogenAff do
    body <- HA.awaitBody
    runUI Breakout.component unit body
