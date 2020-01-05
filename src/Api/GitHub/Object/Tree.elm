-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.Tree exposing (..)

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


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Api.GitHub.Object.Tree
abbreviatedOid =
    Object.selectionForField "String" "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.Tree
commitResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "commitResourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.Tree
commitUrl =
    Object.selectionForField "ScalarCodecs.Uri" "commitUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| A list of tree entries.
-}
entries : SelectionSet decodesTo Api.GitHub.Object.TreeEntry -> SelectionSet (Maybe (List decodesTo)) Api.GitHub.Object.Tree
entries object_ =
    Object.selectionForCompositeField "entries" [] object_ (identity >> Decode.list >> Decode.nullable)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.Tree
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The Git object ID
-}
oid : SelectionSet Api.GitHub.ScalarCodecs.GitObjectID Api.GitHub.Object.Tree
oid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.Tree
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity
