module Main exposing(..)

import Html exposing (Html)

type alias Model
  = { hello: String }

type Msg = Noop

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = (model, Cmd.none)

view : Model -> Html Msg
view model = Html.h1 [] [ Html.text model.hello ]

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

helloWorld: Model
helloWorld = { hello = "World" }

main : Program Never Model Msg 
main =
  Html.program
  { init = (helloWorld, Cmd.none)
  , update = update
  , view = view
  , subscriptions = subscriptions }
