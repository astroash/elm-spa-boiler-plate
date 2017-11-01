module Main exposing (..)

import Navigation


-- My Elm Files

import Types exposing (..)
import Router exposing (..)


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = (\_ -> ( model, Cmd.none ))
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }



-- MODEL


model : Model
model =
    { route = HomeRoute
    , userInput = ""
    }



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newInput ->
            ( { model | userInput = newInput }, Cmd.none )

        UrlChange location ->
            { model | route = (getPage location.hash) } ! [ Cmd.none ]
