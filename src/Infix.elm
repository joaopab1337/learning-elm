module Main exposing (..)

import Html
import String



-- Not possible anymore due to 0.19 update =S


checkStrings : String.String -> String.String -> String.String
checkStrings x y =
    if String.left 1 x == String.left 1 y then
        "True"

    else
        "False"


comparison : String.String
comparison =
    checkStrings "joao" "dulce"


main : Html.Html msg
main =
    Html.text comparison
