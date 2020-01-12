-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.RepositoryVisibility exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The repository's visibility level.

  - Private - The repository is visible only to those with explicit access.
  - Public - The repository is visible to everyone.
  - Internal - The repository is visible only to users in the same business.

-}
type RepositoryVisibility
    = Private
    | Public
    | Internal


list : List RepositoryVisibility
list =
    [ Private, Public, Internal ]


decoder : Decoder RepositoryVisibility
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PRIVATE" ->
                        Decode.succeed Private

                    "PUBLIC" ->
                        Decode.succeed Public

                    "INTERNAL" ->
                        Decode.succeed Internal

                    _ ->
                        Decode.fail ("Invalid RepositoryVisibility type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryVisibility -> String
toString enum =
    case enum of
        Private ->
            "PRIVATE"

        Public ->
            "PUBLIC"

        Internal ->
            "INTERNAL"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RepositoryVisibility
fromString enumString =
    case enumString of
        "PRIVATE" ->
            Just Private

        "PUBLIC" ->
            Just Public

        "INTERNAL" ->
            Just Internal

        _ ->
            Nothing
