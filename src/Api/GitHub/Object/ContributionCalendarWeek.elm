-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ContributionCalendarWeek exposing (..)

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


{-| The days of contributions in this week.
-}
contributionDays : SelectionSet decodesTo Api.GitHub.Object.ContributionCalendarDay -> SelectionSet (List decodesTo) Api.GitHub.Object.ContributionCalendarWeek
contributionDays object_ =
    Object.selectionForCompositeField "contributionDays" [] object_ (identity >> Decode.list)


{-| The date of the earliest square in this week.
-}
firstDay : SelectionSet Api.GitHub.ScalarCodecs.Date Api.GitHub.Object.ContributionCalendarWeek
firstDay =
    Object.selectionForField "ScalarCodecs.Date" "firstDay" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDate |> .decoder)
