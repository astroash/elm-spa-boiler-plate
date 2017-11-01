module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    { userInput : String }


model : Model
model =
    { userInput = "" }



-- UPDATE


type Msg
    = Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newInput ->
            { model | userInput = newInput }



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "hello" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to this elm boiler plate. Tachyons is included. Go nuts." ]
        , input [ class "f3 w30 pa1 center db ba", onInput Change, value model.userInput ] []
        ]
