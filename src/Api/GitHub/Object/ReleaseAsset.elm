-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.ReleaseAsset exposing (..)

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


{-| The asset's content-type
-}
contentType : SelectionSet String Api.GitHub.Object.ReleaseAsset
contentType =
    Object.selectionForField "String" "contentType" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.ReleaseAsset
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of times this asset was downloaded
-}
downloadCount : SelectionSet Int Api.GitHub.Object.ReleaseAsset
downloadCount =
    Object.selectionForField "Int" "downloadCount" [] Decode.int


{-| Identifies the URL where you can download the release asset via the browser.
-}
downloadUrl : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.ReleaseAsset
downloadUrl =
    Object.selectionForField "ScalarCodecs.Uri" "downloadUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.ReleaseAsset
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the title of the release asset.
-}
name : SelectionSet String Api.GitHub.Object.ReleaseAsset
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Release that the asset is associated with
-}
release : SelectionSet decodesTo Api.GitHub.Object.Release -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.ReleaseAsset
release object_ =
    Object.selectionForCompositeField "release" [] object_ (identity >> Decode.nullable)


{-| The size (in bytes) of the asset
-}
size : SelectionSet Int Api.GitHub.Object.ReleaseAsset
size =
    Object.selectionForField "Int" "size" [] Decode.int


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.ReleaseAsset
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The user that performed the upload
-}
uploadedBy : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet decodesTo Api.GitHub.Object.ReleaseAsset
uploadedBy object_ =
    Object.selectionForCompositeField "uploadedBy" [] object_ identity


{-| Identifies the URL of the release asset.
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.ReleaseAsset
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
