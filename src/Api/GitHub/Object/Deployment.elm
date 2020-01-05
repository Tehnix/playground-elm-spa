-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.Deployment exposing (..)

import Api.GitHub.Enum.DeploymentState
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


{-| Identifies the commit sha of the deployment.
-}
commit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Deployment
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ (identity >> Decode.nullable)


{-| Identifies the oid of the deployment commit, even if the commit has been deleted.
-}
commitOid : SelectionSet String Api.GitHub.Object.Deployment
commitOid =
    Object.selectionForField "String" "commitOid" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.Deployment
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Deployment
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.GitHub.Object.Deployment
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The deployment description.
-}
description : SelectionSet (Maybe String) Api.GitHub.Object.Deployment
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The environment to which this deployment was made.
-}
environment : SelectionSet (Maybe String) Api.GitHub.Object.Deployment
environment =
    Object.selectionForField "(Maybe String)" "environment" [] (Decode.string |> Decode.nullable)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.Deployment
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The latest status of this deployment.
-}
latestStatus : SelectionSet decodesTo Api.GitHub.Object.DeploymentStatus -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Deployment
latestStatus object_ =
    Object.selectionForCompositeField "latestStatus" [] object_ (identity >> Decode.nullable)


{-| Extra information that a deployment system might need.
-}
payload : SelectionSet (Maybe String) Api.GitHub.Object.Deployment
payload =
    Object.selectionForField "(Maybe String)" "payload" [] (Decode.string |> Decode.nullable)


{-| Identifies the Ref of the deployment, if the deployment was created by ref.
-}
ref : SelectionSet decodesTo Api.GitHub.Object.Ref -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Deployment
ref object_ =
    Object.selectionForCompositeField "ref" [] object_ (identity >> Decode.nullable)


{-| Identifies the repository associated with the deployment.
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.Deployment
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The current state of the deployment.
-}
state : SelectionSet (Maybe Api.GitHub.Enum.DeploymentState.DeploymentState) Api.GitHub.Object.Deployment
state =
    Object.selectionForField "(Maybe Enum.DeploymentState.DeploymentState)" "state" [] (Api.GitHub.Enum.DeploymentState.decoder |> Decode.nullable)


type alias StatusesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of statuses associated with the deployment.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
statuses : (StatusesOptionalArguments -> StatusesOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.DeploymentStatusConnection -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Deployment
statuses fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "statuses" optionalArgs object_ (identity >> Decode.nullable)


{-| The deployment task.
-}
task : SelectionSet (Maybe String) Api.GitHub.Object.Deployment
task =
    Object.selectionForField "(Maybe String)" "task" [] (Decode.string |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.Deployment
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
