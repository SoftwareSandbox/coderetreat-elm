module Main exposing (..)

import Html exposing (Html)


type alias Model =
    { welcomeText : String }


model : Model
model =
    { welcomeText = "hello" }


type Msg
    = Noop


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Html.h1 [] [ Html.text model.welcomeText ]


main : Program Never Model Msg
main =
    Html.program
        { init = ( model, Cmd.none )
        , update = update
        , view = view
        , subscriptions = \model -> Sub.none
        }
