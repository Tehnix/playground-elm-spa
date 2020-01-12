-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.TreeEntry exposing (..)

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


{-| Entry file mode.
-}
mode : SelectionSet Int Api.GitHub.Object.TreeEntry
mode =
    Object.selectionForField "Int" "mode" [] Decode.int


{-| Entry file name.
-}
name : SelectionSet String Api.GitHub.Object.TreeEntry
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Entry file object.
-}
object : SelectionSet decodesTo Api.GitHub.Interface.GitObject -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.TreeEntry
object object_ =
    Object.selectionForCompositeField "object" [] object_ (identity >> Decode.nullable)


{-| Entry file Git object ID.
-}
oid : SelectionSet Api.GitHub.ScalarCodecs.GitObjectID Api.GitHub.Object.TreeEntry
oid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The Repository the tree entry belongs to
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.TreeEntry
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| Entry file type.
-}
type_ : SelectionSet String Api.GitHub.Object.TreeEntry
type_ =
    Object.selectionForField "String" "type" [] Decode.string
