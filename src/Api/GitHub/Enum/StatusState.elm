-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.StatusState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible commit status states.

  - Expected - Status is expected.
  - Error - Status is errored.
  - Failure - Status is failing.
  - Pending - Status is pending.
  - Success - Status is successful.

-}
type StatusState
    = Expected
    | Error
    | Failure
    | Pending
    | Success


list : List StatusState
list =
    [ Expected, Error, Failure, Pending, Success ]


decoder : Decoder StatusState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "EXPECTED" ->
                        Decode.succeed Expected

                    "ERROR" ->
                        Decode.succeed Error

                    "FAILURE" ->
                        Decode.succeed Failure

                    "PENDING" ->
                        Decode.succeed Pending

                    "SUCCESS" ->
                        Decode.succeed Success

                    _ ->
                        Decode.fail ("Invalid StatusState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : StatusState -> String
toString enum =
    case enum of
        Expected ->
            "EXPECTED"

        Error ->
            "ERROR"

        Failure ->
            "FAILURE"

        Pending ->
            "PENDING"

        Success ->
            "SUCCESS"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe StatusState
fromString enumString =
    case enumString of
        "EXPECTED" ->
            Just Expected

        "ERROR" ->
            Just Error

        "FAILURE" ->
            Just Failure

        "PENDING" ->
            Just Pending

        "SUCCESS" ->
            Just Success

        _ ->
            Nothing
