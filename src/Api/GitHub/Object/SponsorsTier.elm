-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.SponsorsTier exposing (..)

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


{-| SponsorsTier information only visible to users that can administer the associated Sponsors listing.
-}
adminInfo : SelectionSet decodesTo Api.GitHub.Object.SponsorsTierAdminInfo -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.SponsorsTier
adminInfo object_ =
    Object.selectionForCompositeField "adminInfo" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.SponsorsTier
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The description of the tier.
-}
description : SelectionSet String Api.GitHub.Object.SponsorsTier
description =
    Object.selectionForField "String" "description" [] Decode.string


{-| The tier description rendered to HTML
-}
descriptionHTML : SelectionSet Api.GitHub.ScalarCodecs.Html Api.GitHub.Object.SponsorsTier
descriptionHTML =
    Object.selectionForField "ScalarCodecs.Html" "descriptionHTML" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.SponsorsTier
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| How much this tier costs per month in cents.
-}
monthlyPriceInCents : SelectionSet Int Api.GitHub.Object.SponsorsTier
monthlyPriceInCents =
    Object.selectionForField "Int" "monthlyPriceInCents" [] Decode.int


{-| How much this tier costs per month in dollars.
-}
monthlyPriceInDollars : SelectionSet Int Api.GitHub.Object.SponsorsTier
monthlyPriceInDollars =
    Object.selectionForField "Int" "monthlyPriceInDollars" [] Decode.int


{-| The name of the tier.
-}
name : SelectionSet String Api.GitHub.Object.SponsorsTier
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The sponsors listing that this tier belongs to.
-}
sponsorsListing : SelectionSet decodesTo Api.GitHub.Object.SponsorsListing -> SelectionSet decodesTo Api.GitHub.Object.SponsorsTier
sponsorsListing object_ =
    Object.selectionForCompositeField "sponsorsListing" [] object_ identity


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.SponsorsTier
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
