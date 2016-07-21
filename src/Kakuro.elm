module Kakuro exposing (..)

type alias EmptyCell = {}
type alias AcrossCell = { across: Int }
type alias DownCell = { down: Int }
type alias DownAcrossCell = { down: Int, across: Int }
type alias ValueCell = { values: List Int }

draw cell =
  case cell of
    .down && .across -> " " ++ down ++ "//" ++ across ++ " "
    .down -> " " ++ down ++ "//-- "
    .across -> " --//" ++ across ++ " "
    .values -> values
    _ -> "-----"

e = {}
v = {value = [1, 2, 3, 4, 5, 6, 7, 8, 9]}
a across = {across = across}
d down = {down = down}
da down across = {down = down, across = across}

