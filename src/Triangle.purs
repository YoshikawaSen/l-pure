module Triangle where

import Prelude
import Data.List
data Triangle = Triangle Number Number Number Number Number Number

newTriangle :: Partial => Array Triangle -> Array Triangle
newTriangle [] = []
newTriangle triangles = intercalate [] $ map tmp triangles
  where tmp (Triangle a1 a2 b1 b2 c1 c2) = [
    Triangle a1 a2 ((a1 + b1) / 2.0) ((a2 + b2) / 2.0) ((a1 + c1) / 2.0) ((a2 + c2) / 2.0),
    Triangle ((b1 + a1) / 2.0) ((b2 + a2) / 2.0) b1 b2 ((b1 + c1) / 2.0) ((b2 + c2) / 2.0),
    Triangle ((c1 + a1) / 2.0) ((c2 + a2) / 2.0) ((c1 + b1) / 2.0) ((c2 + b2) / 2.0) c1 c2
  ]
