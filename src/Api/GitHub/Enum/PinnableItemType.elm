-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.PinnableItemType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Represents items that can be pinned to a profile page or dashboard.

  - Repository - A repository.
  - Gist - A gist.
  - Issue - An issue.
  - Project - A project.
  - PullRequest - A pull request.
  - User - A user.
  - Organization - An organization.
  - Team - A team.

-}
type PinnableItemType
    = Repository
    | Gist
    | Issue
    | Project
    | PullRequest
    | User
    | Organization
    | Team


list : List PinnableItemType
list =
    [ Repository, Gist, Issue, Project, PullRequest, User, Organization, Team ]


decoder : Decoder PinnableItemType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "REPOSITORY" ->
                        Decode.succeed Repository

                    "GIST" ->
                        Decode.succeed Gist

                    "ISSUE" ->
                        Decode.succeed Issue

                    "PROJECT" ->
                        Decode.succeed Project

                    "PULL_REQUEST" ->
                        Decode.succeed PullRequest

                    "USER" ->
                        Decode.succeed User

                    "ORGANIZATION" ->
                        Decode.succeed Organization

                    "TEAM" ->
                        Decode.succeed Team

                    _ ->
                        Decode.fail ("Invalid PinnableItemType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PinnableItemType -> String
toString enum =
    case enum of
        Repository ->
            "REPOSITORY"

        Gist ->
            "GIST"

        Issue ->
            "ISSUE"

        Project ->
            "PROJECT"

        PullRequest ->
            "PULL_REQUEST"

        User ->
            "USER"

        Organization ->
            "ORGANIZATION"

        Team ->
            "TEAM"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe PinnableItemType
fromString enumString =
    case enumString of
        "REPOSITORY" ->
            Just Repository

        "GIST" ->
            Just Gist

        "ISSUE" ->
            Just Issue

        "PROJECT" ->
            Just Project

        "PULL_REQUEST" ->
            Just PullRequest

        "USER" ->
            Just User

        "ORGANIZATION" ->
            Just Organization

        "TEAM" ->
            Just Team

        _ ->
            Nothing
