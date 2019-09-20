module Main exposing (main)

import Html


add : number -> number -> number
add x y =
    x + y


result : number
result =
    add 2 2 |> (\x -> x * 2)


main : Html.Html msg
main =
    Html.text (String.fromInt result)
