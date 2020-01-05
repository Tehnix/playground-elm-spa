-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ContributionCalendarMonth exposing (..)

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


{-| The date of the first day of this month.
-}
firstDay : SelectionSet Api.GitHub.ScalarCodecs.Date Api.GitHub.Object.ContributionCalendarMonth
firstDay =
    Object.selectionForField "ScalarCodecs.Date" "firstDay" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDate |> .decoder)


{-| The name of the month.
-}
name : SelectionSet String Api.GitHub.Object.ContributionCalendarMonth
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| How many weeks started in this month.
-}
totalWeeks : SelectionSet Int Api.GitHub.Object.ContributionCalendarMonth
totalWeeks =
    Object.selectionForField "Int" "totalWeeks" [] Decode.int


{-| The year the month occurred in.
-}
year : SelectionSet Int Api.GitHub.Object.ContributionCalendarMonth
year =
    Object.selectionForField "Int" "year" [] Decode.int