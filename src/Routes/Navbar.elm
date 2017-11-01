module Routes.Navbar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- import Html.Events exposing (..)

import Types exposing (..)


navbar : Model -> Html Msg
navbar model =
    ul [ class "dib ma0 bg-green w-100 pa2 b white" ]
        [ li [ class "list dib ma3" ] [ text "Home" ]
        , li [ class "list dib ma3" ] [ text "Page One" ]
        , li [ class "list dib ma3" ] [ text "Page Two" ]
        ]
