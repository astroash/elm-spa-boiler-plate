module Main exposing (..)

import Request.Github exposing (..)
import Types.Message exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    program
        { init = init
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }


type alias Model =
    { titles : List Repo
    }


init : ( Model, Cmd Msg )
init =
    ( Model [], getRepos )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GetRepos ->
            ( model, Cmd.none )

        UpdateRepos (Ok result) ->
            ( { model | titles = result }, Cmd.none )

        UpdateRepos (Err error) ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "w-40" ]
        [ h1 [ class "tc" ]
            [ text "hey" ]
        , div
            [ class "tc" ]
          <|
            List.map repoView model.titles
        ]


repoView : Repo -> Html msg
repoView repo =
    p [] [ text repo.name ]
