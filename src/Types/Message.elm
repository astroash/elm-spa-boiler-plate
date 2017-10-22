module Types.Message exposing (..)

import Http exposing (..)


type alias Repo =
    { name : String
    , description : String
    , stars : Int
    , url : String
    }


type Msg
    = UpdateUser String
    | GetRepos
    | UpdateRepos (Result Http.Error (List Repo))
