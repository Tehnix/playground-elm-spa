-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ProjectCard exposing (..)

import Api.GitHub.Enum.ProjectCardState
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


{-| The project column this card is associated under. A card may only belong to one
project column at a time. The column field will be null if the card is created
in a pending state and has yet to be associated with a column. Once cards are
associated with a column, they will not become pending in the future.
-}
column : SelectionSet decodesTo Api.GitHub.Object.ProjectColumn -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.ProjectCard
column object_ =
    Object.selectionForCompositeField "column" [] object_ (identity >> Decode.nullable)


{-| The card content item
-}
content : SelectionSet decodesTo Api.GitHub.Union.ProjectCardItem -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.ProjectCard
content object_ =
    Object.selectionForCompositeField "content" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.ProjectCard
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who created this card
-}
creator : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.ProjectCard
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.GitHub.Object.ProjectCard
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.ProjectCard
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether the card is archived
-}
isArchived : SelectionSet Bool Api.GitHub.Object.ProjectCard
isArchived =
    Object.selectionForField "Bool" "isArchived" [] Decode.bool


{-| The card note
-}
note : SelectionSet (Maybe String) Api.GitHub.Object.ProjectCard
note =
    Object.selectionForField "(Maybe String)" "note" [] (Decode.string |> Decode.nullable)


{-| The project that contains this card.
-}
project : SelectionSet decodesTo Api.GitHub.Object.Project -> SelectionSet decodesTo Api.GitHub.Object.ProjectCard
project object_ =
    Object.selectionForCompositeField "project" [] object_ identity


{-| The HTTP path for this card
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.ProjectCard
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The state of ProjectCard
-}
state : SelectionSet (Maybe Api.GitHub.Enum.ProjectCardState.ProjectCardState) Api.GitHub.Object.ProjectCard
state =
    Object.selectionForField "(Maybe Enum.ProjectCardState.ProjectCardState)" "state" [] (Api.GitHub.Enum.ProjectCardState.decoder |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.ProjectCard
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this card
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.ProjectCard
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)