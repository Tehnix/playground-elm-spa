-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.MarketplaceCategory exposing (..)

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


{-| The category's description.
-}
description : SelectionSet (Maybe String) Api.GitHub.Object.MarketplaceCategory
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The technical description of how apps listed in this category work with GitHub.
-}
howItWorks : SelectionSet (Maybe String) Api.GitHub.Object.MarketplaceCategory
howItWorks =
    Object.selectionForField "(Maybe String)" "howItWorks" [] (Decode.string |> Decode.nullable)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.MarketplaceCategory
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The category's name.
-}
name : SelectionSet String Api.GitHub.Object.MarketplaceCategory
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| How many Marketplace listings have this as their primary category.
-}
primaryListingCount : SelectionSet Int Api.GitHub.Object.MarketplaceCategory
primaryListingCount =
    Object.selectionForField "Int" "primaryListingCount" [] Decode.int


{-| The HTTP path for this Marketplace category.
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.MarketplaceCategory
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| How many Marketplace listings have this as their secondary category.
-}
secondaryListingCount : SelectionSet Int Api.GitHub.Object.MarketplaceCategory
secondaryListingCount =
    Object.selectionForField "Int" "secondaryListingCount" [] Decode.int


{-| The short name of the category used in its URL.
-}
slug : SelectionSet String Api.GitHub.Object.MarketplaceCategory
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| The HTTP URL for this Marketplace category.
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.MarketplaceCategory
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
