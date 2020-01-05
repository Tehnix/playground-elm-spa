-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.RepositoryInfo exposing (..)

import Api.GitHub.Enum.RepositoryLockReason
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
    { onRepository : SelectionSet decodesTo Api.GitHub.Object.Repository
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.RepositoryInfo
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Repository" selections.onRepository
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Interface.RepositoryInfo
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The description of the repository.
-}
description : SelectionSet (Maybe String) Api.GitHub.Interface.RepositoryInfo
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : SelectionSet Api.GitHub.ScalarCodecs.Html Api.GitHub.Interface.RepositoryInfo
descriptionHTML =
    Object.selectionForField "ScalarCodecs.Html" "descriptionHTML" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : SelectionSet Int Api.GitHub.Interface.RepositoryInfo
forkCount =
    Object.selectionForField "Int" "forkCount" [] Decode.int


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
hasIssuesEnabled =
    Object.selectionForField "Bool" "hasIssuesEnabled" [] Decode.bool


{-| Indicates if the repository has the Projects feature enabled.
-}
hasProjectsEnabled : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
hasProjectsEnabled =
    Object.selectionForField "Bool" "hasProjectsEnabled" [] Decode.bool


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
hasWikiEnabled =
    Object.selectionForField "Bool" "hasWikiEnabled" [] Decode.bool


{-| The repository's URL.
-}
homepageUrl : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.RepositoryInfo
homepageUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "homepageUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| Indicates if the repository is unmaintained.
-}
isArchived : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isArchived =
    Object.selectionForField "Bool" "isArchived" [] Decode.bool


{-| Identifies if the repository is a fork.
-}
isFork : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isFork =
    Object.selectionForField "Bool" "isFork" [] Decode.bool


{-| Indicates if the repository has been locked or not.
-}
isLocked : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isLocked =
    Object.selectionForField "Bool" "isLocked" [] Decode.bool


{-| Identifies if the repository is a mirror.
-}
isMirror : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isMirror =
    Object.selectionForField "Bool" "isMirror" [] Decode.bool


{-| Identifies if the repository is private.
-}
isPrivate : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isPrivate =
    Object.selectionForField "Bool" "isPrivate" [] Decode.bool


{-| Identifies if the repository is a template that can be used to generate new repositories.
-}
isTemplate : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
isTemplate =
    Object.selectionForField "Bool" "isTemplate" [] Decode.bool


{-| The license associated with the repository
-}
licenseInfo : SelectionSet decodesTo Api.GitHub.Object.License -> SelectionSet (Maybe decodesTo) Api.GitHub.Interface.RepositoryInfo
licenseInfo object_ =
    Object.selectionForCompositeField "licenseInfo" [] object_ (identity >> Decode.nullable)


{-| The reason the repository has been locked.
-}
lockReason : SelectionSet (Maybe Api.GitHub.Enum.RepositoryLockReason.RepositoryLockReason) Api.GitHub.Interface.RepositoryInfo
lockReason =
    Object.selectionForField "(Maybe Enum.RepositoryLockReason.RepositoryLockReason)" "lockReason" [] (Api.GitHub.Enum.RepositoryLockReason.decoder |> Decode.nullable)


{-| The repository's original mirror URL.
-}
mirrorUrl : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.RepositoryInfo
mirrorUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "mirrorUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The name of the repository.
-}
name : SelectionSet String Api.GitHub.Interface.RepositoryInfo
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The repository's name with owner.
-}
nameWithOwner : SelectionSet String Api.GitHub.Interface.RepositoryInfo
nameWithOwner =
    Object.selectionForField "String" "nameWithOwner" [] Decode.string


{-| The image used to represent this repository in Open Graph data.
-}
openGraphImageUrl : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.RepositoryInfo
openGraphImageUrl =
    Object.selectionForField "ScalarCodecs.Uri" "openGraphImageUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The User owner of the repository.
-}
owner : SelectionSet decodesTo Api.GitHub.Interface.RepositoryOwner -> SelectionSet decodesTo Api.GitHub.Interface.RepositoryInfo
owner object_ =
    Object.selectionForCompositeField "owner" [] object_ identity


{-| Identifies when the repository was last pushed to.
-}
pushedAt : SelectionSet (Maybe Api.GitHub.ScalarCodecs.DateTime) Api.GitHub.Interface.RepositoryInfo
pushedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "pushedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The HTTP path for this repository
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.RepositoryInfo
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias ShortDescriptionHTMLOptionalArguments =
    { limit : OptionalArgument Int }


{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : (ShortDescriptionHTMLOptionalArguments -> ShortDescriptionHTMLOptionalArguments) -> SelectionSet Api.GitHub.ScalarCodecs.Html Api.GitHub.Interface.RepositoryInfo
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Html" "shortDescriptionHTML" optionalArgs (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Interface.RepositoryInfo
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this repository
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.RepositoryInfo
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
-}
usesCustomOpenGraphImage : SelectionSet Bool Api.GitHub.Interface.RepositoryInfo
usesCustomOpenGraphImage =
    Object.selectionForField "Bool" "usesCustomOpenGraphImage" [] Decode.bool