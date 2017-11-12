module Main exposing (..)

import Navigation


-- My Elm Files

import State exposing (..)
import View exposing (..)
import Types exposing (..)


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = (\_ -> ( model, Cmd.none ))
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
