-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Query exposing (..)

import Api.GitHub.Enum.EnterpriseAdministratorRole
import Api.GitHub.Enum.SearchType
import Api.GitHub.Enum.SecurityAdvisoryEcosystem
import Api.GitHub.Enum.SecurityAdvisorySeverity
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
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


type alias CodeOfConductRequiredArguments =
    { key : String }


{-| Look up a code of conduct by its key

  - key - The code of conduct's key

-}
codeOfConduct : CodeOfConductRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.CodeOfConduct -> SelectionSet (Maybe decodesTo) RootQuery
codeOfConduct requiredArgs object_ =
    Object.selectionForCompositeField "codeOfConduct" [ Argument.required "key" requiredArgs.key Encode.string ] object_ (identity >> Decode.nullable)


{-| Look up a code of conduct by its key
-}
codesOfConduct : SelectionSet decodesTo Api.GitHub.Object.CodeOfConduct -> SelectionSet (Maybe (List (Maybe decodesTo))) RootQuery
codesOfConduct object_ =
    Object.selectionForCompositeField "codesOfConduct" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias EnterpriseOptionalArguments =
    { invitationToken : OptionalArgument String }


type alias EnterpriseRequiredArguments =
    { slug : String }


{-| Look up an enterprise by URL slug.

  - slug - The enterprise URL slug.
  - invitationToken - The enterprise invitation token.

-}
enterprise : (EnterpriseOptionalArguments -> EnterpriseOptionalArguments) -> EnterpriseRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.Enterprise -> SelectionSet (Maybe decodesTo) RootQuery
enterprise fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { invitationToken = Absent }

        optionalArgs =
            [ Argument.optional "invitationToken" filledInOptionals.invitationToken Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "enterprise" (optionalArgs ++ [ Argument.required "slug" requiredArgs.slug Encode.string ]) object_ (identity >> Decode.nullable)


type alias EnterpriseAdministratorInvitationRequiredArguments =
    { userLogin : String
    , enterpriseSlug : String
    , role : Api.GitHub.Enum.EnterpriseAdministratorRole.EnterpriseAdministratorRole
    }


{-| Look up a pending enterprise administrator invitation by invitee, enterprise and role.

  - userLogin - The login of the user invited to join the business.
  - enterpriseSlug - The slug of the enterprise the user was invited to join.
  - role - The role for the business member invitation.

-}
enterpriseAdministratorInvitation : EnterpriseAdministratorInvitationRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.EnterpriseAdministratorInvitation -> SelectionSet (Maybe decodesTo) RootQuery
enterpriseAdministratorInvitation requiredArgs object_ =
    Object.selectionForCompositeField "enterpriseAdministratorInvitation" [ Argument.required "userLogin" requiredArgs.userLogin Encode.string, Argument.required "enterpriseSlug" requiredArgs.enterpriseSlug Encode.string, Argument.required "role" requiredArgs.role (Encode.enum Api.GitHub.Enum.EnterpriseAdministratorRole.toString) ] object_ (identity >> Decode.nullable)


type alias EnterpriseAdministratorInvitationByTokenRequiredArguments =
    { invitationToken : String }


{-| Look up a pending enterprise administrator invitation by invitation token.

  - invitationToken - The invitation token sent with the invitation email.

-}
enterpriseAdministratorInvitationByToken : EnterpriseAdministratorInvitationByTokenRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.EnterpriseAdministratorInvitation -> SelectionSet (Maybe decodesTo) RootQuery
enterpriseAdministratorInvitationByToken requiredArgs object_ =
    Object.selectionForCompositeField "enterpriseAdministratorInvitationByToken" [ Argument.required "invitationToken" requiredArgs.invitationToken Encode.string ] object_ (identity >> Decode.nullable)


type alias LicenseRequiredArguments =
    { key : String }


{-| Look up an open source license by its key

  - key - The license's downcased SPDX ID

-}
license : LicenseRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.License -> SelectionSet (Maybe decodesTo) RootQuery
license requiredArgs object_ =
    Object.selectionForCompositeField "license" [ Argument.required "key" requiredArgs.key Encode.string ] object_ (identity >> Decode.nullable)


{-| Return a list of known open source licenses
-}
licenses : SelectionSet decodesTo Api.GitHub.Object.License -> SelectionSet (List (Maybe decodesTo)) RootQuery
licenses object_ =
    Object.selectionForCompositeField "licenses" [] object_ (identity >> Decode.nullable >> Decode.list)


type alias MarketplaceCategoriesOptionalArguments =
    { includeCategories : OptionalArgument (List String)
    , excludeEmpty : OptionalArgument Bool
    , excludeSubcategories : OptionalArgument Bool
    }


{-| Get alphabetically sorted list of Marketplace categories

  - includeCategories - Return only the specified categories.
  - excludeEmpty - Exclude categories with no listings.
  - excludeSubcategories - Returns top level categories only, excluding any subcategories.

-}
marketplaceCategories : (MarketplaceCategoriesOptionalArguments -> MarketplaceCategoriesOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.MarketplaceCategory -> SelectionSet (List decodesTo) RootQuery
marketplaceCategories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { includeCategories = Absent, excludeEmpty = Absent, excludeSubcategories = Absent }

        optionalArgs =
            [ Argument.optional "includeCategories" filledInOptionals.includeCategories (Encode.string |> Encode.list), Argument.optional "excludeEmpty" filledInOptionals.excludeEmpty Encode.bool, Argument.optional "excludeSubcategories" filledInOptionals.excludeSubcategories Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceCategories" optionalArgs object_ (identity >> Decode.list)


type alias MarketplaceCategoryOptionalArguments =
    { useTopicAliases : OptionalArgument Bool }


type alias MarketplaceCategoryRequiredArguments =
    { slug : String }


{-| Look up a Marketplace category by its slug.

  - slug - The URL slug of the category.
  - useTopicAliases - Also check topic aliases for the category slug

-}
marketplaceCategory : (MarketplaceCategoryOptionalArguments -> MarketplaceCategoryOptionalArguments) -> MarketplaceCategoryRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.MarketplaceCategory -> SelectionSet (Maybe decodesTo) RootQuery
marketplaceCategory fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { useTopicAliases = Absent }

        optionalArgs =
            [ Argument.optional "useTopicAliases" filledInOptionals.useTopicAliases Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceCategory" (optionalArgs ++ [ Argument.required "slug" requiredArgs.slug Encode.string ]) object_ (identity >> Decode.nullable)


type alias MarketplaceListingRequiredArguments =
    { slug : String }


{-| Look up a single Marketplace listing

  - slug - Select the listing that matches this slug. It's the short name of the listing used in its URL.

-}
marketplaceListing : MarketplaceListingRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.MarketplaceListing -> SelectionSet (Maybe decodesTo) RootQuery
marketplaceListing requiredArgs object_ =
    Object.selectionForCompositeField "marketplaceListing" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias MarketplaceListingsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , categorySlug : OptionalArgument String
    , useTopicAliases : OptionalArgument Bool
    , viewerCanAdmin : OptionalArgument Bool
    , adminId : OptionalArgument Api.GitHub.ScalarCodecs.Id
    , organizationId : OptionalArgument Api.GitHub.ScalarCodecs.Id
    , allStates : OptionalArgument Bool
    , slugs : OptionalArgument (List (Maybe String))
    , primaryCategoryOnly : OptionalArgument Bool
    , withFreeTrialsOnly : OptionalArgument Bool
    }


{-| Look up Marketplace listings

  - after - Returns the elements in the list that come after the specified cursor.

  - before - Returns the elements in the list that come before the specified cursor.

  - first - Returns the first _n_ elements from the list.

  - last - Returns the last _n_ elements from the list.

  - categorySlug - Select only listings with the given category.

  - useTopicAliases - Also check topic aliases for the category slug

  - viewerCanAdmin - Select listings to which user has admin access. If omitted, listings visible to the
    viewer are returned.

  - adminId - Select listings that can be administered by the specified user.

  - organizationId - Select listings for products owned by the specified organization.

  - allStates - Select listings visible to the viewer even if they are not approved. If omitted or
    false, only approved listings will be returned.

  - slugs - Select the listings with these slugs, if they are visible to the viewer.

  - primaryCategoryOnly - Select only listings where the primary category matches the given category slug.

  - withFreeTrialsOnly - Select only listings that offer a free trial.

-}
marketplaceListings : (MarketplaceListingsOptionalArguments -> MarketplaceListingsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.MarketplaceListingConnection -> SelectionSet decodesTo RootQuery
marketplaceListings fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, categorySlug = Absent, useTopicAliases = Absent, viewerCanAdmin = Absent, adminId = Absent, organizationId = Absent, allStates = Absent, slugs = Absent, primaryCategoryOnly = Absent, withFreeTrialsOnly = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "categorySlug" filledInOptionals.categorySlug Encode.string, Argument.optional "useTopicAliases" filledInOptionals.useTopicAliases Encode.bool, Argument.optional "viewerCanAdmin" filledInOptionals.viewerCanAdmin Encode.bool, Argument.optional "adminId" filledInOptionals.adminId (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecId), Argument.optional "organizationId" filledInOptionals.organizationId (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecId), Argument.optional "allStates" filledInOptionals.allStates Encode.bool, Argument.optional "slugs" filledInOptionals.slugs (Encode.string |> Encode.maybe |> Encode.list), Argument.optional "primaryCategoryOnly" filledInOptionals.primaryCategoryOnly Encode.bool, Argument.optional "withFreeTrialsOnly" filledInOptionals.withFreeTrialsOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceListings" optionalArgs object_ identity


{-| Return information about the GitHub instance
-}
meta : SelectionSet decodesTo Api.GitHub.Object.GitHubMetadata -> SelectionSet decodesTo RootQuery
meta object_ =
    Object.selectionForCompositeField "meta" [] object_ identity


type alias NodeRequiredArguments =
    { id : Api.GitHub.ScalarCodecs.Id }


{-| Fetches an object given its ID.

  - id - ID of the object.

-}
node : NodeRequiredArguments -> SelectionSet decodesTo Api.GitHub.Interface.Node -> SelectionSet (Maybe decodesTo) RootQuery
node requiredArgs object_ =
    Object.selectionForCompositeField "node" [ Argument.required "id" requiredArgs.id (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecId) ] object_ (identity >> Decode.nullable)


type alias NodesRequiredArguments =
    { ids : List Api.GitHub.ScalarCodecs.Id }


{-| Lookup nodes by a list of IDs.

  - ids - The list of node IDs.

-}
nodes : NodesRequiredArguments -> SelectionSet decodesTo Api.GitHub.Interface.Node -> SelectionSet (List (Maybe decodesTo)) RootQuery
nodes requiredArgs object_ =
    Object.selectionForCompositeField "nodes" [ Argument.required "ids" requiredArgs.ids ((Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecId) |> Encode.list) ] object_ (identity >> Decode.nullable >> Decode.list)


type alias OrganizationRequiredArguments =
    { login : String }


{-| Lookup a organization by login.

  - login - The organization's login.

-}
organization : OrganizationRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.Organization -> SelectionSet (Maybe decodesTo) RootQuery
organization requiredArgs object_ =
    Object.selectionForCompositeField "organization" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


type alias RateLimitOptionalArguments =
    { dryRun : OptionalArgument Bool }


{-| The client's rate limit information.

  - dryRun - If true, calculate the cost for the query without evaluating it

-}
rateLimit : (RateLimitOptionalArguments -> RateLimitOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.RateLimit -> SelectionSet (Maybe decodesTo) RootQuery
rateLimit fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { dryRun = Absent }

        optionalArgs =
            [ Argument.optional "dryRun" filledInOptionals.dryRun Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "rateLimit" optionalArgs object_ (identity >> Decode.nullable)


{-| Hack to workaround <https://github.com/facebook/relay/issues/112> re-exposing the root query object
-}
relay : SelectionSet decodesTo RootQuery -> SelectionSet decodesTo RootQuery
relay object_ =
    Object.selectionForCompositeField "relay" [] object_ identity


type alias RepositoryRequiredArguments =
    { owner : String
    , name : String
    }


{-| Lookup a given repository by the owner and repository name.

  - owner - The login field of a user or organization
  - name - The name of the repository

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet (Maybe decodesTo) RootQuery
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "owner" requiredArgs.owner Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


type alias RepositoryOwnerRequiredArguments =
    { login : String }


{-| Lookup a repository owner (ie. either a User or an Organization) by login.

  - login - The username to lookup the owner by.

-}
repositoryOwner : RepositoryOwnerRequiredArguments -> SelectionSet decodesTo Api.GitHub.Interface.RepositoryOwner -> SelectionSet (Maybe decodesTo) RootQuery
repositoryOwner requiredArgs object_ =
    Object.selectionForCompositeField "repositoryOwner" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


type alias ResourceRequiredArguments =
    { url : Api.GitHub.ScalarCodecs.Uri }


{-| Lookup resource by a URL.

  - url - The URL.

-}
resource : ResourceRequiredArguments -> SelectionSet decodesTo Api.GitHub.Interface.UniformResourceLocatable -> SelectionSet (Maybe decodesTo) RootQuery
resource requiredArgs object_ =
    Object.selectionForCompositeField "resource" [ Argument.required "url" requiredArgs.url (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecUri) ] object_ (identity >> Decode.nullable)


type alias SearchOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


type alias SearchRequiredArguments =
    { query : String
    , type_ : Api.GitHub.Enum.SearchType.SearchType
    }


{-| Perform a search across resources.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - type\_ - The types of search items to search within.

-}
search : (SearchOptionalArguments -> SearchOptionalArguments) -> SearchRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.SearchResultItemConnection -> SelectionSet decodesTo RootQuery
search fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "search" (optionalArgs ++ [ Argument.required "query" requiredArgs.query Encode.string, Argument.required "type" requiredArgs.type_ (Encode.enum Api.GitHub.Enum.SearchType.toString) ]) object_ identity


type alias SecurityAdvisoriesOptionalArguments =
    { orderBy : OptionalArgument Api.GitHub.InputObject.SecurityAdvisoryOrder
    , identifier : OptionalArgument Api.GitHub.InputObject.SecurityAdvisoryIdentifierFilter
    , publishedSince : OptionalArgument Api.GitHub.ScalarCodecs.DateTime
    , updatedSince : OptionalArgument Api.GitHub.ScalarCodecs.DateTime
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| GitHub Security Advisories

  - orderBy - Ordering options for the returned topics.
  - identifier - Filter advisories by identifier, e.g. GHSA or CVE.
  - publishedSince - Filter advisories to those published since a time in the past.
  - updatedSince - Filter advisories to those updated since a time in the past.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
securityAdvisories : (SecurityAdvisoriesOptionalArguments -> SecurityAdvisoriesOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.SecurityAdvisoryConnection -> SelectionSet decodesTo RootQuery
securityAdvisories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, identifier = Absent, publishedSince = Absent, updatedSince = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy Api.GitHub.InputObject.encodeSecurityAdvisoryOrder, Argument.optional "identifier" filledInOptionals.identifier Api.GitHub.InputObject.encodeSecurityAdvisoryIdentifierFilter, Argument.optional "publishedSince" filledInOptionals.publishedSince (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecDateTime), Argument.optional "updatedSince" filledInOptionals.updatedSince (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapEncoder .codecDateTime), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "securityAdvisories" optionalArgs object_ identity


type alias SecurityAdvisoryRequiredArguments =
    { ghsaId : String }


{-| Fetch a Security Advisory by its GHSA ID

  - ghsaId - GitHub Security Advisory ID.

-}
securityAdvisory : SecurityAdvisoryRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.SecurityAdvisory -> SelectionSet (Maybe decodesTo) RootQuery
securityAdvisory requiredArgs object_ =
    Object.selectionForCompositeField "securityAdvisory" [ Argument.required "ghsaId" requiredArgs.ghsaId Encode.string ] object_ (identity >> Decode.nullable)


type alias SecurityVulnerabilitiesOptionalArguments =
    { orderBy : OptionalArgument Api.GitHub.InputObject.SecurityVulnerabilityOrder
    , ecosystem : OptionalArgument Api.GitHub.Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem
    , package : OptionalArgument String
    , severities : OptionalArgument (List Api.GitHub.Enum.SecurityAdvisorySeverity.SecurityAdvisorySeverity)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Software Vulnerabilities documented by GitHub Security Advisories

  - orderBy - Ordering options for the returned topics.
  - ecosystem - An ecosystem to filter vulnerabilities by.
  - package - A package name to filter vulnerabilities by.
  - severities - A list of severities to filter vulnerabilities by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
securityVulnerabilities : (SecurityVulnerabilitiesOptionalArguments -> SecurityVulnerabilitiesOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.SecurityVulnerabilityConnection -> SelectionSet decodesTo RootQuery
securityVulnerabilities fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, ecosystem = Absent, package = Absent, severities = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy Api.GitHub.InputObject.encodeSecurityVulnerabilityOrder, Argument.optional "ecosystem" filledInOptionals.ecosystem (Encode.enum Api.GitHub.Enum.SecurityAdvisoryEcosystem.toString), Argument.optional "package" filledInOptionals.package Encode.string, Argument.optional "severities" filledInOptionals.severities (Encode.enum Api.GitHub.Enum.SecurityAdvisorySeverity.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "securityVulnerabilities" optionalArgs object_ identity


type alias SponsorsListingRequiredArguments =
    { slug : String }


{-| Look up a single Sponsors Listing

  - slug - Select the Sponsors listing which matches this slug

-}
sponsorsListing : SponsorsListingRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.SponsorsListing -> SelectionSet (Maybe decodesTo) RootQuery
sponsorsListing requiredArgs object_ =
    Object.selectionForCompositeField "sponsorsListing" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias TopicRequiredArguments =
    { name : String }


{-| Look up a topic by name.

  - name - The topic's name.

-}
topic : TopicRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.Topic -> SelectionSet (Maybe decodesTo) RootQuery
topic requiredArgs object_ =
    Object.selectionForCompositeField "topic" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


type alias UserRequiredArguments =
    { login : String }


{-| Lookup a user by login.

  - login - The user's login.

-}
user : UserRequiredArguments -> SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet (Maybe decodesTo) RootQuery
user requiredArgs object_ =
    Object.selectionForCompositeField "user" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


{-| The currently authenticated user.
-}
viewer : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet decodesTo RootQuery
viewer object_ =
    Object.selectionForCompositeField "viewer" [] object_ identity
