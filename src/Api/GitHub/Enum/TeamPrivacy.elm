-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.TeamPrivacy exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible team privacy values.

  - Secret - A secret team can only be seen by its members.
  - Visible - A visible team can be seen and @mentioned by every member of the organization.

-}
type TeamPrivacy
    = Secret
    | Visible


list : List TeamPrivacy
list =
    [ Secret, Visible ]


decoder : Decoder TeamPrivacy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "SECRET" ->
                        Decode.succeed Secret

                    "VISIBLE" ->
                        Decode.succeed Visible

                    _ ->
                        Decode.fail ("Invalid TeamPrivacy type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamPrivacy -> String
toString enum =
    case enum of
        Secret ->
            "SECRET"

        Visible ->
            "VISIBLE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe TeamPrivacy
fromString enumString =
    case enumString of
        "SECRET" ->
            Just Secret

        "VISIBLE" ->
            Just Visible

        _ ->
            Nothing
