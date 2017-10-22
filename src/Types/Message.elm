module Types.Message exposing (..)

import Http exposing (..)


type alias Repo =
    { name : String
    }


type Msg
    = GetRepos
    | UpdateRepos (Result Http.Error (List Repo))
