module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (placeholder, type_, value)
import Html.Events exposing (onInput)


main =
    Browser.sandbox { init = init, view = view, update = update }



-- MODEL


type alias Model =
    { email : String, password : String, passwordConfirmation : String }


init : Model
init =
    Model "" "" ""



-- UPDATE


type Msg
    = Email String
    | Password String
    | PasswordConfirmation String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Email val ->
            { model | email = val }

        Password val ->
            { model | password = val }

        PasswordConfirmation val ->
            { model | passwordConfirmation = val }



-- VIEW


inputView : String -> String -> String -> (String -> msg) -> Html msg
inputView t p v h =
    input [ type_ t, placeholder p, value v, onInput h ] []


formErrorsView : Model -> Html Msg
formErrorsView model =
    if model.password == model.passwordConfirmation then
        div [] [ text "" ]

    else
        div [] [ text "The passwords don't match!" ]


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Login" ]
        , inputView "email" "example@mail.com" model.email Email
        , inputView "password" "Type your password" model.password Password
        , inputView "password" "Confirm your password" model.passwordConfirmation PasswordConfirmation
        , formErrorsView model
        ]
