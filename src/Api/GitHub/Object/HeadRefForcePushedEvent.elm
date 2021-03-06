-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.HeadRefForcePushedEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.HeadRefForcePushedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the after commit SHA for the 'head\_ref\_force\_pushed' event.
-}
afterCommit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.HeadRefForcePushedEvent
afterCommit object_ =
    Object.selectionForCompositeField "afterCommit" [] object_ (identity >> Decode.nullable)


{-| Identifies the before commit SHA for the 'head\_ref\_force\_pushed' event.
-}
beforeCommit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.HeadRefForcePushedEvent
beforeCommit object_ =
    Object.selectionForCompositeField "beforeCommit" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.HeadRefForcePushedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.HeadRefForcePushedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Api.GitHub.Object.PullRequest -> SelectionSet decodesTo Api.GitHub.Object.HeadRefForcePushedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the fully qualified ref name for the 'head\_ref\_force\_pushed' event.
-}
ref : SelectionSet decodesTo Api.GitHub.Object.Ref -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.HeadRefForcePushedEvent
ref object_ =
    Object.selectionForCompositeField "ref" [] object_ (identity >> Decode.nullable)
