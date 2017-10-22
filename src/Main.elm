module Main exposing (..)

import Request.Github exposing (..)
import Types.Message exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    program
        { init = init
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }


type alias Model =
    { repos : List Repo
    , username : String
    }


init : ( Model, Cmd Msg )
init =
    ( Model [] "", Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateUser username ->
            ( { model | username = username }, Cmd.none )

        GetRepos ->
            ( model, (getRepos model.username) )

        UpdateRepos (Ok result) ->
            ( { model | repos = result }, Cmd.none )

        UpdateRepos (Err error) ->
            let
                log =
                    Debug.log <| "yo"
            in
                ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "w-90 center" ]
        [ h1 [ class "tc" ]
            [ text "hey" ]
        , input [ onInput UpdateUser ] []
        , button [ onClick GetRepos ] [ text "get the repos" ]
        , div
            [ class "" ]
          <|
            List.map repoView model.repos
        ]


repoView : Repo -> Html msg
repoView repo =
    div [ class "w-100 fl align-center w-third-ns pa2" ]
        [ div [ class "outline w-100 bg-pink grow pa2" ]
            [ a
                [ href repo.url ]
                [ p [] [ text repo.name ]
                , p [] [ text repo.description ]
                , p [] [ text <| toString repo.stars ]
                ]
            ]
        ]
