module Request.Github exposing (..)

import Types.Message exposing (..)
import Http exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (decode, required, optional)


getRepos : String -> Cmd Msg
getRepos username =
    let
        url =
            "https://api.github.com/users/" ++ username ++ "/repos"

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
        |> optional "description" string "no description found"
        |> required "stargazers_count" int


reposDecoder : Decoder (List Repo)
reposDecoder =
    list repoDecoder
