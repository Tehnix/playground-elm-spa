-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.PullRequestReviewThread exposing (..)

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


type alias CommentsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , skip : OptionalArgument Int
    }


{-| A list of pull request comments associated with the thread.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - skip - Skips the first _n_ elements in the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewCommentConnection -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewThread
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, skip = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "skip" filledInOptionals.skip Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.PullRequestReviewThread
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether this thread has been resolved
-}
isResolved : SelectionSet Bool Api.GitHub.Object.PullRequestReviewThread
isResolved =
    Object.selectionForField "Bool" "isResolved" [] Decode.bool


{-| Identifies the pull request associated with this thread.
-}
pullRequest : SelectionSet decodesTo Api.GitHub.Object.PullRequest -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewThread
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the repository associated with this thread.
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.PullRequestReviewThread
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The user who resolved this thread
-}
resolvedBy : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.PullRequestReviewThread
resolvedBy object_ =
    Object.selectionForCompositeField "resolvedBy" [] object_ (identity >> Decode.nullable)


{-| Whether or not the viewer can resolve this thread
-}
viewerCanResolve : SelectionSet Bool Api.GitHub.Object.PullRequestReviewThread
viewerCanResolve =
    Object.selectionForField "Bool" "viewerCanResolve" [] Decode.bool


{-| Whether or not the viewer can unresolve this thread
-}
viewerCanUnresolve : SelectionSet Bool Api.GitHub.Object.PullRequestReviewThread
viewerCanUnresolve =
    Object.selectionForField "Bool" "viewerCanUnresolve" [] Decode.bool
