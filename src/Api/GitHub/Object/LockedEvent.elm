-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.LockedEvent exposing (..)

import Api.GitHub.Enum.LockReason
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
actor : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.LockedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.LockedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.LockedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Reason that the conversation was locked (optional).
-}
lockReason : SelectionSet (Maybe Api.GitHub.Enum.LockReason.LockReason) Api.GitHub.Object.LockedEvent
lockReason =
    Object.selectionForField "(Maybe Enum.LockReason.LockReason)" "lockReason" [] (Api.GitHub.Enum.LockReason.decoder |> Decode.nullable)


{-| Object that was locked.
-}
lockable : SelectionSet decodesTo Api.GitHub.Interface.Lockable -> SelectionSet decodesTo Api.GitHub.Object.LockedEvent
lockable object_ =
    Object.selectionForCompositeField "lockable" [] object_ identity
