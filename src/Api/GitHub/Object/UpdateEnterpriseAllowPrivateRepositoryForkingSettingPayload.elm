-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload exposing (..)

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
clientMutationId : SelectionSet (Maybe String) Api.GitHub.Object.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The enterprise with the updated allow private repository forking setting.
-}
enterprise : SelectionSet decodesTo Api.GitHub.Object.Enterprise -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload
enterprise object_ =
    Object.selectionForCompositeField "enterprise" [] object_ (identity >> Decode.nullable)


{-| A message confirming the result of updating the allow private repository forking setting.
-}
message : SelectionSet (Maybe String) Api.GitHub.Object.UpdateEnterpriseAllowPrivateRepositoryForkingSettingPayload
message =
    Object.selectionForField "(Maybe String)" "message" [] (Decode.string |> Decode.nullable)
