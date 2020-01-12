-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.Actor exposing (..)

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
    { onBot : SelectionSet decodesTo Api.GitHub.Object.Bot
    , onEnterpriseUserAccount : SelectionSet decodesTo Api.GitHub.Object.EnterpriseUserAccount
    , onMannequin : SelectionSet decodesTo Api.GitHub.Object.Mannequin
    , onOrganization : SelectionSet decodesTo Api.GitHub.Object.Organization
    , onUser : SelectionSet decodesTo Api.GitHub.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.Actor
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Bot" selections.onBot
        , Object.buildFragment "EnterpriseUserAccount" selections.onEnterpriseUserAccount
        , Object.buildFragment "Mannequin" selections.onMannequin
        , Object.buildFragment "Organization" selections.onOrganization
        , Object.buildFragment "User" selections.onUser
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onBot = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onEnterpriseUserAccount = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMannequin = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the actor's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.Actor
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The username of the actor.
-}
login : SelectionSet String Api.GitHub.Interface.Actor
login =
    Object.selectionForField "String" "login" [] Decode.string


{-| The HTTP path for this actor.
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.Actor
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this actor.
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Interface.Actor
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
