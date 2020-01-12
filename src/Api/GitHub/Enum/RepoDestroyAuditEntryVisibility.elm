-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.RepoDestroyAuditEntryVisibility exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The privacy of a repository

  - Internal - The repository is visible only to users in the same business.
  - Private - The repository is visible only to those with explicit access.
  - Public - The repository is visible to everyone.

-}
type RepoDestroyAuditEntryVisibility
    = Internal
    | Private
    | Public


list : List RepoDestroyAuditEntryVisibility
list =
    [ Internal, Private, Public ]


decoder : Decoder RepoDestroyAuditEntryVisibility
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "INTERNAL" ->
                        Decode.succeed Internal

                    "PRIVATE" ->
                        Decode.succeed Private

                    "PUBLIC" ->
                        Decode.succeed Public

                    _ ->
                        Decode.fail ("Invalid RepoDestroyAuditEntryVisibility type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepoDestroyAuditEntryVisibility -> String
toString enum =
    case enum of
        Internal ->
            "INTERNAL"

        Private ->
            "PRIVATE"

        Public ->
            "PUBLIC"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RepoDestroyAuditEntryVisibility
fromString enumString =
    case enumString of
        "INTERNAL" ->
            Just Internal

        "PRIVATE" ->
            Just Private

        "PUBLIC" ->
            Just Public

        _ ->
            Nothing
