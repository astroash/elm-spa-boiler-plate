module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "hello" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to this SPA elm boiler plate. Tachyons is included. Go nuts." ]
        , input [ class "f3 w30 pa1 center db ba tc", onInput Change, value model.userInput, placeholder "I update state, yo" ] []
        ]
