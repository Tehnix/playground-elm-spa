-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Interface.AuditEntry exposing (..)

import Api.GitHub.Enum.OperationType
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
    { onMembersCanDeleteReposClearAuditEntry : SelectionSet decodesTo Api.GitHub.Object.MembersCanDeleteReposClearAuditEntry
    , onMembersCanDeleteReposDisableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.MembersCanDeleteReposDisableAuditEntry
    , onMembersCanDeleteReposEnableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.MembersCanDeleteReposEnableAuditEntry
    , onOauthApplicationCreateAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OauthApplicationCreateAuditEntry
    , onOrgAddBillingManagerAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgAddBillingManagerAuditEntry
    , onOrgAddMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgAddMemberAuditEntry
    , onOrgBlockUserAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgBlockUserAuditEntry
    , onOrgConfigDisableCollaboratorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgConfigDisableCollaboratorsOnlyAuditEntry
    , onOrgConfigEnableCollaboratorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgConfigEnableCollaboratorsOnlyAuditEntry
    , onOrgCreateAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgCreateAuditEntry
    , onOrgDisableOauthAppRestrictionsAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgDisableOauthAppRestrictionsAuditEntry
    , onOrgDisableSamlAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgDisableSamlAuditEntry
    , onOrgDisableTwoFactorRequirementAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgDisableTwoFactorRequirementAuditEntry
    , onOrgEnableOauthAppRestrictionsAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgEnableOauthAppRestrictionsAuditEntry
    , onOrgEnableSamlAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgEnableSamlAuditEntry
    , onOrgEnableTwoFactorRequirementAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgEnableTwoFactorRequirementAuditEntry
    , onOrgInviteMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgInviteMemberAuditEntry
    , onOrgInviteToBusinessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgInviteToBusinessAuditEntry
    , onOrgOauthAppAccessApprovedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
    , onOrgOauthAppAccessDeniedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgOauthAppAccessDeniedAuditEntry
    , onOrgOauthAppAccessRequestedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgOauthAppAccessRequestedAuditEntry
    , onOrgRemoveBillingManagerAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgRemoveBillingManagerAuditEntry
    , onOrgRemoveMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgRemoveMemberAuditEntry
    , onOrgRemoveOutsideCollaboratorAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgRemoveOutsideCollaboratorAuditEntry
    , onOrgRestoreMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgRestoreMemberAuditEntry
    , onOrgUnblockUserAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgUnblockUserAuditEntry
    , onOrgUpdateDefaultRepositoryPermissionAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgUpdateDefaultRepositoryPermissionAuditEntry
    , onOrgUpdateMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgUpdateMemberAuditEntry
    , onOrgUpdateMemberRepositoryCreationPermissionAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgUpdateMemberRepositoryCreationPermissionAuditEntry
    , onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry : SelectionSet decodesTo Api.GitHub.Object.OrgUpdateMemberRepositoryInvitationPermissionAuditEntry
    , onPrivateRepositoryForkingDisableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.PrivateRepositoryForkingDisableAuditEntry
    , onPrivateRepositoryForkingEnableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.PrivateRepositoryForkingEnableAuditEntry
    , onRepoAccessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoAccessAuditEntry
    , onRepoAddMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoAddMemberAuditEntry
    , onRepoAddTopicAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoAddTopicAuditEntry
    , onRepoArchivedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoArchivedAuditEntry
    , onRepoChangeMergeSettingAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoChangeMergeSettingAuditEntry
    , onRepoConfigDisableAnonymousGitAccessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigDisableAnonymousGitAccessAuditEntry
    , onRepoConfigDisableCollaboratorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigDisableCollaboratorsOnlyAuditEntry
    , onRepoConfigDisableContributorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigDisableContributorsOnlyAuditEntry
    , onRepoConfigDisableSockpuppetDisallowedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigDisableSockpuppetDisallowedAuditEntry
    , onRepoConfigEnableAnonymousGitAccessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigEnableAnonymousGitAccessAuditEntry
    , onRepoConfigEnableCollaboratorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigEnableCollaboratorsOnlyAuditEntry
    , onRepoConfigEnableContributorsOnlyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigEnableContributorsOnlyAuditEntry
    , onRepoConfigEnableSockpuppetDisallowedAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigEnableSockpuppetDisallowedAuditEntry
    , onRepoConfigLockAnonymousGitAccessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigLockAnonymousGitAccessAuditEntry
    , onRepoConfigUnlockAnonymousGitAccessAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoConfigUnlockAnonymousGitAccessAuditEntry
    , onRepoCreateAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoCreateAuditEntry
    , onRepoDestroyAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoDestroyAuditEntry
    , onRepoRemoveMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoRemoveMemberAuditEntry
    , onRepoRemoveTopicAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepoRemoveTopicAuditEntry
    , onRepositoryVisibilityChangeDisableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepositoryVisibilityChangeDisableAuditEntry
    , onRepositoryVisibilityChangeEnableAuditEntry : SelectionSet decodesTo Api.GitHub.Object.RepositoryVisibilityChangeEnableAuditEntry
    , onTeamAddMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.TeamAddMemberAuditEntry
    , onTeamAddRepositoryAuditEntry : SelectionSet decodesTo Api.GitHub.Object.TeamAddRepositoryAuditEntry
    , onTeamChangeParentTeamAuditEntry : SelectionSet decodesTo Api.GitHub.Object.TeamChangeParentTeamAuditEntry
    , onTeamRemoveMemberAuditEntry : SelectionSet decodesTo Api.GitHub.Object.TeamRemoveMemberAuditEntry
    , onTeamRemoveRepositoryAuditEntry : SelectionSet decodesTo Api.GitHub.Object.TeamRemoveRepositoryAuditEntry
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.GitHub.Interface.AuditEntry
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "MembersCanDeleteReposClearAuditEntry" selections.onMembersCanDeleteReposClearAuditEntry
        , Object.buildFragment "MembersCanDeleteReposDisableAuditEntry" selections.onMembersCanDeleteReposDisableAuditEntry
        , Object.buildFragment "MembersCanDeleteReposEnableAuditEntry" selections.onMembersCanDeleteReposEnableAuditEntry
        , Object.buildFragment "OauthApplicationCreateAuditEntry" selections.onOauthApplicationCreateAuditEntry
        , Object.buildFragment "OrgAddBillingManagerAuditEntry" selections.onOrgAddBillingManagerAuditEntry
        , Object.buildFragment "OrgAddMemberAuditEntry" selections.onOrgAddMemberAuditEntry
        , Object.buildFragment "OrgBlockUserAuditEntry" selections.onOrgBlockUserAuditEntry
        , Object.buildFragment "OrgConfigDisableCollaboratorsOnlyAuditEntry" selections.onOrgConfigDisableCollaboratorsOnlyAuditEntry
        , Object.buildFragment "OrgConfigEnableCollaboratorsOnlyAuditEntry" selections.onOrgConfigEnableCollaboratorsOnlyAuditEntry
        , Object.buildFragment "OrgCreateAuditEntry" selections.onOrgCreateAuditEntry
        , Object.buildFragment "OrgDisableOauthAppRestrictionsAuditEntry" selections.onOrgDisableOauthAppRestrictionsAuditEntry
        , Object.buildFragment "OrgDisableSamlAuditEntry" selections.onOrgDisableSamlAuditEntry
        , Object.buildFragment "OrgDisableTwoFactorRequirementAuditEntry" selections.onOrgDisableTwoFactorRequirementAuditEntry
        , Object.buildFragment "OrgEnableOauthAppRestrictionsAuditEntry" selections.onOrgEnableOauthAppRestrictionsAuditEntry
        , Object.buildFragment "OrgEnableSamlAuditEntry" selections.onOrgEnableSamlAuditEntry
        , Object.buildFragment "OrgEnableTwoFactorRequirementAuditEntry" selections.onOrgEnableTwoFactorRequirementAuditEntry
        , Object.buildFragment "OrgInviteMemberAuditEntry" selections.onOrgInviteMemberAuditEntry
        , Object.buildFragment "OrgInviteToBusinessAuditEntry" selections.onOrgInviteToBusinessAuditEntry
        , Object.buildFragment "OrgOauthAppAccessApprovedAuditEntry" selections.onOrgOauthAppAccessApprovedAuditEntry
        , Object.buildFragment "OrgOauthAppAccessDeniedAuditEntry" selections.onOrgOauthAppAccessDeniedAuditEntry
        , Object.buildFragment "OrgOauthAppAccessRequestedAuditEntry" selections.onOrgOauthAppAccessRequestedAuditEntry
        , Object.buildFragment "OrgRemoveBillingManagerAuditEntry" selections.onOrgRemoveBillingManagerAuditEntry
        , Object.buildFragment "OrgRemoveMemberAuditEntry" selections.onOrgRemoveMemberAuditEntry
        , Object.buildFragment "OrgRemoveOutsideCollaboratorAuditEntry" selections.onOrgRemoveOutsideCollaboratorAuditEntry
        , Object.buildFragment "OrgRestoreMemberAuditEntry" selections.onOrgRestoreMemberAuditEntry
        , Object.buildFragment "OrgUnblockUserAuditEntry" selections.onOrgUnblockUserAuditEntry
        , Object.buildFragment "OrgUpdateDefaultRepositoryPermissionAuditEntry" selections.onOrgUpdateDefaultRepositoryPermissionAuditEntry
        , Object.buildFragment "OrgUpdateMemberAuditEntry" selections.onOrgUpdateMemberAuditEntry
        , Object.buildFragment "OrgUpdateMemberRepositoryCreationPermissionAuditEntry" selections.onOrgUpdateMemberRepositoryCreationPermissionAuditEntry
        , Object.buildFragment "OrgUpdateMemberRepositoryInvitationPermissionAuditEntry" selections.onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry
        , Object.buildFragment "PrivateRepositoryForkingDisableAuditEntry" selections.onPrivateRepositoryForkingDisableAuditEntry
        , Object.buildFragment "PrivateRepositoryForkingEnableAuditEntry" selections.onPrivateRepositoryForkingEnableAuditEntry
        , Object.buildFragment "RepoAccessAuditEntry" selections.onRepoAccessAuditEntry
        , Object.buildFragment "RepoAddMemberAuditEntry" selections.onRepoAddMemberAuditEntry
        , Object.buildFragment "RepoAddTopicAuditEntry" selections.onRepoAddTopicAuditEntry
        , Object.buildFragment "RepoArchivedAuditEntry" selections.onRepoArchivedAuditEntry
        , Object.buildFragment "RepoChangeMergeSettingAuditEntry" selections.onRepoChangeMergeSettingAuditEntry
        , Object.buildFragment "RepoConfigDisableAnonymousGitAccessAuditEntry" selections.onRepoConfigDisableAnonymousGitAccessAuditEntry
        , Object.buildFragment "RepoConfigDisableCollaboratorsOnlyAuditEntry" selections.onRepoConfigDisableCollaboratorsOnlyAuditEntry
        , Object.buildFragment "RepoConfigDisableContributorsOnlyAuditEntry" selections.onRepoConfigDisableContributorsOnlyAuditEntry
        , Object.buildFragment "RepoConfigDisableSockpuppetDisallowedAuditEntry" selections.onRepoConfigDisableSockpuppetDisallowedAuditEntry
        , Object.buildFragment "RepoConfigEnableAnonymousGitAccessAuditEntry" selections.onRepoConfigEnableAnonymousGitAccessAuditEntry
        , Object.buildFragment "RepoConfigEnableCollaboratorsOnlyAuditEntry" selections.onRepoConfigEnableCollaboratorsOnlyAuditEntry
        , Object.buildFragment "RepoConfigEnableContributorsOnlyAuditEntry" selections.onRepoConfigEnableContributorsOnlyAuditEntry
        , Object.buildFragment "RepoConfigEnableSockpuppetDisallowedAuditEntry" selections.onRepoConfigEnableSockpuppetDisallowedAuditEntry
        , Object.buildFragment "RepoConfigLockAnonymousGitAccessAuditEntry" selections.onRepoConfigLockAnonymousGitAccessAuditEntry
        , Object.buildFragment "RepoConfigUnlockAnonymousGitAccessAuditEntry" selections.onRepoConfigUnlockAnonymousGitAccessAuditEntry
        , Object.buildFragment "RepoCreateAuditEntry" selections.onRepoCreateAuditEntry
        , Object.buildFragment "RepoDestroyAuditEntry" selections.onRepoDestroyAuditEntry
        , Object.buildFragment "RepoRemoveMemberAuditEntry" selections.onRepoRemoveMemberAuditEntry
        , Object.buildFragment "RepoRemoveTopicAuditEntry" selections.onRepoRemoveTopicAuditEntry
        , Object.buildFragment "RepositoryVisibilityChangeDisableAuditEntry" selections.onRepositoryVisibilityChangeDisableAuditEntry
        , Object.buildFragment "RepositoryVisibilityChangeEnableAuditEntry" selections.onRepositoryVisibilityChangeEnableAuditEntry
        , Object.buildFragment "TeamAddMemberAuditEntry" selections.onTeamAddMemberAuditEntry
        , Object.buildFragment "TeamAddRepositoryAuditEntry" selections.onTeamAddRepositoryAuditEntry
        , Object.buildFragment "TeamChangeParentTeamAuditEntry" selections.onTeamChangeParentTeamAuditEntry
        , Object.buildFragment "TeamRemoveMemberAuditEntry" selections.onTeamRemoveMemberAuditEntry
        , Object.buildFragment "TeamRemoveRepositoryAuditEntry" selections.onTeamRemoveRepositoryAuditEntry
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onMembersCanDeleteReposClearAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMembersCanDeleteReposDisableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMembersCanDeleteReposEnableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOauthApplicationCreateAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgAddBillingManagerAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgAddMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgBlockUserAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgConfigDisableCollaboratorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgConfigEnableCollaboratorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgCreateAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgDisableOauthAppRestrictionsAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgDisableSamlAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgDisableTwoFactorRequirementAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgEnableOauthAppRestrictionsAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgEnableSamlAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgEnableTwoFactorRequirementAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgInviteMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgInviteToBusinessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgOauthAppAccessApprovedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgOauthAppAccessDeniedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgOauthAppAccessRequestedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgRemoveBillingManagerAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgRemoveMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgRemoveOutsideCollaboratorAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgRestoreMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgUnblockUserAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgUpdateDefaultRepositoryPermissionAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgUpdateMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgUpdateMemberRepositoryCreationPermissionAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrgUpdateMemberRepositoryInvitationPermissionAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPrivateRepositoryForkingDisableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPrivateRepositoryForkingEnableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoAccessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoAddMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoAddTopicAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoArchivedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoChangeMergeSettingAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigDisableAnonymousGitAccessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigDisableCollaboratorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigDisableContributorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigDisableSockpuppetDisallowedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigEnableAnonymousGitAccessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigEnableCollaboratorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigEnableContributorsOnlyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigEnableSockpuppetDisallowedAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigLockAnonymousGitAccessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoConfigUnlockAnonymousGitAccessAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoCreateAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoDestroyAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoRemoveMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepoRemoveTopicAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepositoryVisibilityChangeDisableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepositoryVisibilityChangeEnableAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamAddMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamAddRepositoryAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamChangeParentTeamAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamRemoveMemberAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamRemoveRepositoryAuditEntry = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The action name
-}
action : SelectionSet String Api.GitHub.Interface.AuditEntry
action =
    Object.selectionForField "String" "action" [] Decode.string


{-| The user who initiated the action
-}
actor : SelectionSet decodesTo Api.GitHub.Union.AuditEntryActor -> SelectionSet (Maybe decodesTo) Api.GitHub.Interface.AuditEntry
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| The IP address of the actor
-}
actorIp : SelectionSet (Maybe String) Api.GitHub.Interface.AuditEntry
actorIp =
    Object.selectionForField "(Maybe String)" "actorIp" [] (Decode.string |> Decode.nullable)


{-| A readable representation of the actor's location
-}
actorLocation : SelectionSet decodesTo Api.GitHub.Object.ActorLocation -> SelectionSet (Maybe decodesTo) Api.GitHub.Interface.AuditEntry
actorLocation object_ =
    Object.selectionForCompositeField "actorLocation" [] object_ (identity >> Decode.nullable)


{-| The username of the user who initiated the action
-}
actorLogin : SelectionSet (Maybe String) Api.GitHub.Interface.AuditEntry
actorLogin =
    Object.selectionForField "(Maybe String)" "actorLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the actor.
-}
actorResourcePath : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.AuditEntry
actorResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorResourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the actor.
-}
actorUrl : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.AuditEntry
actorUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The time the action was initiated
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.PreciseDateTime Api.GitHub.Interface.AuditEntry
createdAt =
    Object.selectionForField "ScalarCodecs.PreciseDateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecPreciseDateTime |> .decoder)


{-| The corresponding operation type for the action
-}
operationType : SelectionSet (Maybe Api.GitHub.Enum.OperationType.OperationType) Api.GitHub.Interface.AuditEntry
operationType =
    Object.selectionForField "(Maybe Enum.OperationType.OperationType)" "operationType" [] (Api.GitHub.Enum.OperationType.decoder |> Decode.nullable)


{-| The user affected by the action
-}
user : SelectionSet decodesTo Api.GitHub.Object.User -> SelectionSet (Maybe decodesTo) Api.GitHub.Interface.AuditEntry
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)


{-| For actions involving two users, the actor is the initiator and the user is the affected user.
-}
userLogin : SelectionSet (Maybe String) Api.GitHub.Interface.AuditEntry
userLogin =
    Object.selectionForField "(Maybe String)" "userLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the user.
-}
userResourcePath : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.AuditEntry
userResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userResourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the user.
-}
userUrl : SelectionSet (Maybe Api.GitHub.ScalarCodecs.Uri) Api.GitHub.Interface.AuditEntry
userUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userUrl" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
