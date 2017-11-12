module State exposing (..)

import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = HomeRoute
    , userInput = ""
    }



--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "#home" ->
            HomeRoute

        "#pageone" ->
            PageOneRoute

        "#pagetwo" ->
            PageTwoRoute

        _ ->
            HomeRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newInput ->
            ( { model | userInput = newInput }, Cmd.none )

        UrlChange location ->
            ( { model | route = (getRoute location.hash) }, Cmd.none )
