-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.AddProjectColumnPayload exposing (..)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Api.GitHub.Object.AddProjectColumnPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the project's column connection.
-}
columnEdge : SelectionSet decodesTo Api.GitHub.Object.ProjectColumnEdge -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.AddProjectColumnPayload
columnEdge object_ =
    Object.selectionForCompositeField "columnEdge" [] object_ (identity >> Decode.nullable)


{-| The project
-}
project : SelectionSet decodesTo Api.GitHub.Object.Project -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.AddProjectColumnPayload
project object_ =
    Object.selectionForCompositeField "project" [] object_ (identity >> Decode.nullable)