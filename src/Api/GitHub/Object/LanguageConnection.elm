-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.LanguageConnection exposing (..)

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


{-| A list of edges.
-}
edges : SelectionSet decodesTo Api.GitHub.Object.LanguageEdge -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.GitHub.Object.LanguageConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Api.GitHub.Object.Language -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.GitHub.Object.LanguageConnection
nodes object_ =
    Object.selectionForCompositeField "nodes" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Api.GitHub.Object.PageInfo -> SelectionSet decodesTo Api.GitHub.Object.LanguageConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int Api.GitHub.Object.LanguageConnection
totalCount =
    Object.selectionForField "Int" "totalCount" [] Decode.int


{-| The total size in bytes of files written in that language.
-}
totalSize : SelectionSet Int Api.GitHub.Object.LanguageConnection
totalSize =
    Object.selectionForField "Int" "totalSize" [] Decode.int
