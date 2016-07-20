module Main exposing (..)

import ElmTest exposing (..)
import KakuroTest


tests : Test
tests =
  Kakuro.tests


main : Program Never
main =
  runSuite tests

