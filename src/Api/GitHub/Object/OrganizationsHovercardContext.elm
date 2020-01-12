-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.OrganizationsHovercardContext exposing (..)

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


{-| A string describing this context
-}
message : SelectionSet String Api.GitHub.Object.OrganizationsHovercardContext
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| An octicon to accompany this context
-}
octicon : SelectionSet String Api.GitHub.Object.OrganizationsHovercardContext
octicon =
    Object.selectionForField "String" "octicon" [] Decode.string


type alias RelevantOrganizationsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Organizations this user is a member of that are relevant

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
relevantOrganizations : (RelevantOrganizationsOptionalArguments -> RelevantOrganizationsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.OrganizationConnection -> SelectionSet decodesTo Api.GitHub.Object.OrganizationsHovercardContext
relevantOrganizations fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "relevantOrganizations" optionalArgs object_ identity


{-| The total number of organizations this user is in
-}
totalOrganizationCount : SelectionSet Int Api.GitHub.Object.OrganizationsHovercardContext
totalOrganizationCount =
    Object.selectionForField "Int" "totalOrganizationCount" [] Decode.int
