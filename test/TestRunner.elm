module Main exposing (..)

import ElmTest exposing (..)
import KakuroTest


tests : Test
tests =
  KakuroTest.tests


main : Program Never
main =
  runSuite tests

