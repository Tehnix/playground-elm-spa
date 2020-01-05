-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.OrgRestoreMemberMembershipRepositoryAuditEntryData exposing (..)

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


{-| The repository associated with the action
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.OrgRestoreMemberMembershipRepositoryAuditEntryData
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ (identity >> Decode.nullable)


{-| The name of the repository
-}
repositoryName : SelectionSet (Maybe String) Api.GitHub.Object.OrgRestoreMemberMembershipRepositoryAuditEntryData
repositoryName =
    Object.selectionForField "(Maybe String)" "repositoryName" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the repository
-}
repositoryResourcePath : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Object.OrgRestoreMemberMembershipRepositoryAuditEntryData
repositoryResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "repositoryResourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the repository
-}
repositoryUrl : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Object.OrgRestoreMemberMembershipRepositoryAuditEntryData
repositoryUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "repositoryUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
