-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.Sponsorship exposing (..)

import Api.GitHub.Enum.SponsorshipPrivacy
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


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.Sponsorship
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.Sponsorship
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The entity that is being sponsored
-}
maintainer : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet decodesTo Api.GitHub.Object.Sponsorship
maintainer object_ =
    Object.selectionForCompositeField "maintainer" [] object_ identity


{-| The privacy level for this sponsorship.
-}
privacyLevel : SelectionSet Api.GitHub.Enum.SponsorshipPrivacy.SponsorshipPrivacy Api.GitHub.Object.Sponsorship
privacyLevel =
    Object.selectionForField "Enum.SponsorshipPrivacy.SponsorshipPrivacy" "privacyLevel" [] Api.GitHub.Enum.SponsorshipPrivacy.decoder


{-| The entity that is sponsoring. Returns null if the sponsorship is private
-}
sponsor : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Sponsorship
sponsor object_ =
    Object.selectionForCompositeField "sponsor" [] object_ (identity >> Decode.nullable)


{-| The entity that is being sponsored
-}
sponsorable : SelectionSet decodesTo Api.GitHub.Interface.Sponsorable -> SelectionSet decodesTo Api.GitHub.Object.Sponsorship
sponsorable object_ =
    Object.selectionForCompositeField "sponsorable" [] object_ identity


{-| The associated sponsorship tier
-}
tier : SelectionSet decodesTo Api.GitHub.Object.SponsorsTier -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.Sponsorship
tier object_ =
    Object.selectionForCompositeField "tier" [] object_ (identity >> Decode.nullable)
