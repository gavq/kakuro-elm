module Kakuro exposing (..)

import String

type alias Across a = {a | across: Int}
type alias Down a = {a | down: Int}
type alias DownCell = Down {}
type alias AcrossCell = Across {}
type alias DownAcrossCell = Down(Across {})

type alias EmptyCell = { empty: Int }
type alias ValueCell = { values: List Int }

draw cell =
  case cell of
    {down, across} -> " " ++ down ++ "//" ++ across ++ " "
    {down} -> " " ++ down ++ "//-- "
    {across} -> " --//" ++ across ++ " "
    {values} -> String.concat values
    _ -> "-----"

e = {empty = 0}
v = {values = [1, 2, 3, 4, 5, 6, 7, 8, 9]}
a across = {across = across}
d down = {down = down}
da down across = {down = down, across = across}

