-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.RenamedTitleEvent exposing (..)

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
actor : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.RenamedTitleEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.RenamedTitleEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the current title of the issue or pull request.
-}
currentTitle : SelectionSet String Api.GitHub.Object.RenamedTitleEvent
currentTitle =
    Object.selectionForField "String" "currentTitle" [] Decode.string


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.RenamedTitleEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the previous title of the issue or pull request.
-}
previousTitle : SelectionSet String Api.GitHub.Object.RenamedTitleEvent
previousTitle =
    Object.selectionForField "String" "previousTitle" [] Decode.string


{-| Subject that was renamed.
-}
subject : SelectionSet decodesTo Api.GitHub.Union.RenamedTitleSubject -> SelectionSet decodesTo Api.GitHub.Object.RenamedTitleEvent
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity
