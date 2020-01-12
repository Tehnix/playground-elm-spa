-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ContentAttachment exposing (..)

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


{-| The body text of the content attachment. This parameter supports markdown.
-}
body : SelectionSet String Api.GitHub.Object.ContentAttachment
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| The content reference that the content attachment is attached to.
-}
contentReference : SelectionSet decodesTo Api.GitHub.Object.ContentReference -> SelectionSet decodesTo Api.GitHub.Object.ContentAttachment
contentReference object_ =
    Object.selectionForCompositeField "contentReference" [] object_ identity


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet Int Api.GitHub.Object.ContentAttachment
databaseId =
    Object.selectionForField "Int" "databaseId" [] Decode.int


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.ContentAttachment
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The title of the content attachment.
-}
title : SelectionSet String Api.GitHub.Object.ContentAttachment
title =
    Object.selectionForField "String" "title" [] Decode.string
