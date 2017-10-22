module Request.Github exposing (..)

import Types.Message exposing (..)
import Http exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (decode, required)


getRepos : Cmd Msg
getRepos =
    let
        url =
            "https://api.github.com/users/jwhiles/repos"

        request =
            Http.get url reposDecoder
    in
        Http.send
            UpdateRepos
            request


repoDecoder : Decoder Repo
repoDecoder =
    decode Repo
        |> required "name" string


reposDecoder : Decoder (List Repo)
reposDecoder =
    list repoDecoder
