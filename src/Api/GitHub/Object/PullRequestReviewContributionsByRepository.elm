-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.PullRequestReviewContributionsByRepository exposing (..)

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


type alias ContributionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Api.GitHub.InputObject.ContributionOrder
    }


{-| The pull request review contributions.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for contributions returned from the connection.

-}
contributions : (ContributionsOptionalArguments -> ContributionsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.CreatedPullRequestReviewContributionConnection -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewContributionsByRepository
contributions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Api.GitHub.InputObject.encodeContributionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "contributions" optionalArgs object_ identity


{-| The repository in which the pull request reviews were made.
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewContributionsByRepository
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity
