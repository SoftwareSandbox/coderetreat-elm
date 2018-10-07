module Main exposing (Model, Place(..), greet, initialModel)


type Place
    = World
    | Elm


type alias Model =
    { text : String, place : Place }


initialModel : Model
initialModel =
    Model "Hello" World


greet : Model -> String
greet m =
    let
        place =
            case m.place of
                World ->
                    "World"

                Elm ->
                    "Elm"
    in
    m.text ++ " " ++ place
