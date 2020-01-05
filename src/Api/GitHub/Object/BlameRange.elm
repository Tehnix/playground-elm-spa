-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.BlameRange exposing (..)

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


{-| Identifies the recency of the change, from 1 (new) to 10 (old). This is calculated as a 2-quantile and determines the length of distance between the median age of all the changes in the file and the recency of the current range's change.
-}
age : SelectionSet Int Api.GitHub.Object.BlameRange
age =
    Object.selectionForField "Int" "age" [] Decode.int


{-| Identifies the line author
-}
commit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet decodesTo Api.GitHub.Object.BlameRange
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ identity


{-| The ending line for the range
-}
endingLine : SelectionSet Int Api.GitHub.Object.BlameRange
endingLine =
    Object.selectionForField "Int" "endingLine" [] Decode.int


{-| The starting line for the range
-}
startingLine : SelectionSet Int Api.GitHub.Object.BlameRange
startingLine =
    Object.selectionForField "Int" "startingLine" [] Decode.int
