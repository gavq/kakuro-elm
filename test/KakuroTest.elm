module KakuroTest exposing (..)

import ElmTest exposing (..)

import Kakuro exposing (..)

tests : Test
tests =
    suite "A Test Suite"
        [ test "empty"
            <| assertEqual "  ----- " draw(empty)
        , test "across"
            <| assert " --/3 " draw(a(3))
        ]
