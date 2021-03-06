-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.DeploymentEnvironmentChangedEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.DeploymentEnvironmentChangedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.DeploymentEnvironmentChangedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The deployment status that updated the deployment environment.
-}
deploymentStatus : SelectionSet decodesTo Api.GitHub.Object.DeploymentStatus -> SelectionSet decodesTo Api.GitHub.Object.DeploymentEnvironmentChangedEvent
deploymentStatus object_ =
    Object.selectionForCompositeField "deploymentStatus" [] object_ identity


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.DeploymentEnvironmentChangedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Api.GitHub.Object.PullRequest -> SelectionSet decodesTo Api.GitHub.Object.DeploymentEnvironmentChangedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity
