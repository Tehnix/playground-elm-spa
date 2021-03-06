-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.Subscribable exposing (..)

import Api.GitHub.Enum.SubscriptionState
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
    { onCommit : SelectionSet decodesTo Api.GitHub.Object.Commit
    , onIssue : SelectionSet decodesTo Api.GitHub.Object.Issue
    , onPullRequest : SelectionSet decodesTo Api.GitHub.Object.PullRequest
    , onRepository : SelectionSet decodesTo Api.GitHub.Object.Repository
    , onTeam : SelectionSet decodesTo Api.GitHub.Object.Team
    , onTeamDiscussion : SelectionSet decodesTo Api.GitHub.Object.TeamDiscussion
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.Subscribable
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Commit" selections.onCommit
        , Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "PullRequest" selections.onPullRequest
        , Object.buildFragment "Repository" selections.onRepository
        , Object.buildFragment "Team" selections.onTeam
        , Object.buildFragment "TeamDiscussion" selections.onTeamDiscussion
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeam = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamDiscussion = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Interface.Subscribable
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Api.GitHub.Interface.Subscribable
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet (Maybe Api.GitHub.Enum.SubscriptionState.SubscriptionState) Api.GitHub.Interface.Subscribable
viewerSubscription =
    Object.selectionForField "(Maybe Enum.SubscriptionState.SubscriptionState)" "viewerSubscription" [] (Api.GitHub.Enum.SubscriptionState.decoder |> Decode.nullable)
