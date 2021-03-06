-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.TopicAuditEntryData exposing (..)

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
    { onRepoAddTopicAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoAddTopicAuditEntry
    , onRepoRemoveTopicAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoRemoveTopicAuditEntry
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.TopicAuditEntryData
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "RepoAddTopicAuditEntry" selections.onRepoAddTopicAuditEntry
        , Object.buildFragment "RepoRemoveTopicAuditEntry" selections.onRepoRemoveTopicAuditEntry
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepoAddTopicAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoRemoveTopicAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The name of the topic added to the repository
-}
topic : SelectionSet decodesTo Api.GitHub.Object.Topic -> SelectionSet (Maybe decodesTo) Api.GitHub.Interface.TopicAuditEntryData
topic object_ =
    Object.selectionForCompositeField "topic" [] object_ (identity >> Decode.nullable)


{-| The name of the topic added to the repository
-}
topicName : SelectionSet (Maybe String) Api.GitHub.Interface.TopicAuditEntryData
topicName =
    Object.selectionForField "(Maybe String)" "topicName" [] (Decode.string |> Decode.nullable)
