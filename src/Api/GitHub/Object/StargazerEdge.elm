-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.StargazerEdge exposing (..)

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


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String Api.GitHub.Object.StargazerEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


node : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet decodesTo Api.GitHub.Object.StargazerEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ identity


{-| Identifies when the item was starred.
-}
starredAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.StargazerEdge
starredAt =
    Object.selectionForField "ScalarCodecs.DateTime" "starredAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
