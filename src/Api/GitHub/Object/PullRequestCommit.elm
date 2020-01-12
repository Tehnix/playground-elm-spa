-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.PullRequestCommit exposing (..)

import Api.GitHub.InputObject
import Api.GitHub.Interface
import Api.GitHub.Object
import Api.GitHub.Scalar
import Api.GitHub.ScalarCodecs
import Api.GitHub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The Git commit object
-}
commit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet decodesTo Api.GitHub.Object.PullRequestCommit
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ identity


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.PullRequestCommit
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The pull request this commit belongs to
-}
pullRequest : SelectionSet decodesTo Api.GitHub.Object.PullRequest -> SelectionSet decodesTo Api.GitHub.Object.PullRequestCommit
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| The HTTP path for this pull request commit
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.PullRequestCommit
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this pull request commit
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.PullRequestCommit
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
