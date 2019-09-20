module Main exposing (uppercase)

import Html


uppercase str =
    String.toUpper str


uppercased =
    uppercase "jaojao"


main =
    Html.text uppercased
