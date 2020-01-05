-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.OperationType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The corresponding operation type for the action

  - Access - An existing resource was accessed
  - Authentication - A resource performed an authentication event
  - Create - A new resource was created
  - Modify - An existing resource was modified
  - Remove - An existing resource was removed
  - Restore - An existing resource was restored
  - Transfer - An existing resource was transferred between multiple resources

-}
type OperationType
    = Access
    | Authentication
    | Create
    | Modify
    | Remove
    | Restore
    | Transfer


list : List OperationType
list =
    [ Access, Authentication, Create, Modify, Remove, Restore, Transfer ]


decoder : Decoder OperationType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ACCESS" ->
                        Decode.succeed Access

                    "AUTHENTICATION" ->
                        Decode.succeed Authentication

                    "CREATE" ->
                        Decode.succeed Create

                    "MODIFY" ->
                        Decode.succeed Modify

                    "REMOVE" ->
                        Decode.succeed Remove

                    "RESTORE" ->
                        Decode.succeed Restore

                    "TRANSFER" ->
                        Decode.succeed Transfer

                    _ ->
                        Decode.fail ("Invalid OperationType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : OperationType -> String
toString enum =
    case enum of
        Access ->
            "ACCESS"

        Authentication ->
            "AUTHENTICATION"

        Create ->
            "CREATE"

        Modify ->
            "MODIFY"

        Remove ->
            "REMOVE"

        Restore ->
            "RESTORE"

        Transfer ->
            "TRANSFER"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OperationType
fromString enumString =
    case enumString of
        "ACCESS" ->
            Just Access

        "AUTHENTICATION" ->
            Just Authentication

        "CREATE" ->
            Just Create

        "MODIFY" ->
            Just Modify

        "REMOVE" ->
            Just Remove

        "RESTORE" ->
            Just Restore

        "TRANSFER" ->
            Just Transfer

        _ ->
            Nothing
