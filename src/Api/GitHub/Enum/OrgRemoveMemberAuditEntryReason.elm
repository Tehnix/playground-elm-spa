-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Enum.OrgRemoveMemberAuditEntryReason exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The reason a member was removed from an Organization.

  - TwoFactorRequirementNonCompliance - The organization required 2FA of its billing managers and this user did not have 2FA enabled.
  - SamlExternalIdentityMissing - SAML external identity missing
  - SamlSsoEnforcementRequiresExternalIdentity - SAML SSO enforcement requires an external identity

-}
type OrgRemoveMemberAuditEntryReason
    = TwoFactorRequirementNonCompliance
    | SamlExternalIdentityMissing
    | SamlSsoEnforcementRequiresExternalIdentity


list : List OrgRemoveMemberAuditEntryReason
list =
    [ TwoFactorRequirementNonCompliance, SamlExternalIdentityMissing, SamlSsoEnforcementRequiresExternalIdentity ]


decoder : Decoder OrgRemoveMemberAuditEntryReason
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE" ->
                        Decode.succeed TwoFactorRequirementNonCompliance

                    "SAML_EXTERNAL_IDENTITY_MISSING" ->
                        Decode.succeed SamlExternalIdentityMissing

                    "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY" ->
                        Decode.succeed SamlSsoEnforcementRequiresExternalIdentity

                    _ ->
                        Decode.fail ("Invalid OrgRemoveMemberAuditEntryReason type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : OrgRemoveMemberAuditEntryReason -> String
toString enum =
    case enum of
        TwoFactorRequirementNonCompliance ->
            "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE"

        SamlExternalIdentityMissing ->
            "SAML_EXTERNAL_IDENTITY_MISSING"

        SamlSsoEnforcementRequiresExternalIdentity ->
            "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OrgRemoveMemberAuditEntryReason
fromString enumString =
    case enumString of
        "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE" ->
            Just TwoFactorRequirementNonCompliance

        "SAML_EXTERNAL_IDENTITY_MISSING" ->
            Just SamlExternalIdentityMissing

        "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY" ->
            Just SamlSsoEnforcementRequiresExternalIdentity

        _ ->
            Nothing
