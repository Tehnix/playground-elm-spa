-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.EnterpriseMembershipType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible values we have for filtering Platform::Objects::User#enterprises.

  - All - Returns all enterprises in which the user is a member, admin, or billing manager.
  - Admin - Returns all enterprises in which the user is an admin.
  - BillingManager - Returns all enterprises in which the user is a billing manager.
  - OrgMembership - Returns all enterprises in which the user is a member of an org that is owned by the enterprise.

-}
type EnterpriseMembershipType
    = All
    | Admin
    | BillingManager
    | OrgMembership


list : List EnterpriseMembershipType
list =
    [ All, Admin, BillingManager, OrgMembership ]


decoder : Decoder EnterpriseMembershipType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ALL" ->
                        Decode.succeed All

                    "ADMIN" ->
                        Decode.succeed Admin

                    "BILLING_MANAGER" ->
                        Decode.succeed BillingManager

                    "ORG_MEMBERSHIP" ->
                        Decode.succeed OrgMembership

                    _ ->
                        Decode.fail ("Invalid EnterpriseMembershipType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : EnterpriseMembershipType -> String
toString enum =
    case enum of
        All ->
            "ALL"

        Admin ->
            "ADMIN"

        BillingManager ->
            "BILLING_MANAGER"

        OrgMembership ->
            "ORG_MEMBERSHIP"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe EnterpriseMembershipType
fromString enumString =
    case enumString of
        "ALL" ->
            Just All

        "ADMIN" ->
            Just Admin

        "BILLING_MANAGER" ->
            Just BillingManager

        "ORG_MEMBERSHIP" ->
            Just OrgMembership

        _ ->
            Nothing
