-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.Starrable exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onGist : SelectionSet decodesTo Api.GitHub.Object.Gist
    , onRepository : SelectionSet decodesTo Api.GitHub.Object.Repository
    , onTopic : SelectionSet decodesTo Api.GitHub.Object.Topic
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.Starrable
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Gist" selections.onGist
        , Object.buildFragment "Repository" selections.onRepository
        , Object.buildFragment "Topic" selections.onTopic
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onGist = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTopic = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Interface.Starrable
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias StargazersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Api.GitHub.InputObject.StarOrder
    }


{-| A list of users who have starred this starrable.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for connection

-}
stargazers : (StargazersOptionalArguments -> StargazersOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.StargazerConnection -> SelectionSet decodesTo Api.GitHub.Interface.Starrable
stargazers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Api.GitHub.InputObject.encodeStarOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "stargazers" optionalArgs object_ identity


{-| Returns a boolean indicating whether the viewing user has starred this starrable.
-}
viewerHasStarred : SelectionSet Bool Api.GitHub.Interface.Starrable
viewerHasStarred =
    Object.selectionForField "Bool" "viewerHasStarred" [] Decode.bool
