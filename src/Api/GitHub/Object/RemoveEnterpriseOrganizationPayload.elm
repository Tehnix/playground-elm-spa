-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.RemoveEnterpriseOrganizationPayload exposing (..)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Api.GitHub.Object.RemoveEnterpriseOrganizationPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The updated enterprise.
-}
enterprise : SelectionSet decodesTo Api.GitHub.Object.Enterprise -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.RemoveEnterpriseOrganizationPayload
enterprise object_ =
    Object.selectionForCompositeField "enterprise" [] object_ (identity >> Decode.nullable)


{-| The organization that was removed from the enterprise.
-}
organization : SelectionSet decodesTo Api.GitHub.Object.Organization -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.RemoveEnterpriseOrganizationPayload
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ (identity >> Decode.nullable)


{-| The viewer performing the mutation.
-}
viewer : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.RemoveEnterpriseOrganizationPayload
viewer object_ =
    Object.selectionForCompositeField "viewer" [] object_ (identity >> Decode.nullable)
