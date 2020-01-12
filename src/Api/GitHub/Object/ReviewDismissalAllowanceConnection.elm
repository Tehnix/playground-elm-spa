-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ReviewDismissalAllowanceConnection exposing (..)

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
edges : SelectionSet decodesTo Api.GitHub.Object.ReviewDismissalAllowanceEdge -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.GitHub.Object.ReviewDismissalAllowanceConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Api.GitHub.Object.ReviewDismissalAllowance -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.GitHub.Object.ReviewDismissalAllowanceConnection
nodes object_ =
    Object.selectionForCompositeField "nodes" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Api.GitHub.Object.PageInfo -> SelectionSet decodesTo Api.GitHub.Object.ReviewDismissalAllowanceConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int Api.GitHub.Object.ReviewDismissalAllowanceConnection
totalCount =
    Object.selectionForField "Int" "totalCount" [] Decode.int
