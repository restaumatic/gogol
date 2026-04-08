{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.MyBusinessAccountManagement.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessAccountManagement.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Account_PermissionLevel
    Account_PermissionLevel
      (
        Account_PermissionLevel_PERMISSIONLEVELUNSPECIFIED,
        Account_PermissionLevel_OWNERLEVEL,
        Account_PermissionLevel_MEMBERLEVEL,
        ..
      ),

    -- * Account_Role
    Account_Role
      (
        Account_Role_ACCOUNTROLEUNSPECIFIED,
        Account_Role_PRIMARYOWNER,
        Account_Role_Owner,
        Account_Role_Manager,
        Account_Role_SITEMANAGER,
        ..
      ),

    -- * Account_Type
    Account_Type
      (
        Account_Type_ACCOUNTTYPEUNSPECIFIED,
        Account_Type_Personal,
        Account_Type_LOCATIONGROUP,
        Account_Type_USERGROUP,
        Account_Type_Organization,
        ..
      ),

    -- * Account_VerificationState
    Account_VerificationState
      (
        Account_VerificationState_VERIFICATIONSTATEUNSPECIFIED,
        Account_VerificationState_Verified,
        Account_VerificationState_Unverified,
        Account_VerificationState_VERIFICATIONREQUESTED,
        ..
      ),

    -- * Account_VettedState
    Account_VettedState
      (
        Account_VettedState_VETTEDSTATEUNSPECIFIED,
        Account_VettedState_NOTVETTED,
        Account_VettedState_Vetted,
        Account_VettedState_Invalid,
        ..
      ),

    -- * Admin_Role
    Admin_Role
      (
        Admin_Role_ADMINROLEUNSPECIFIED,
        Admin_Role_PRIMARYOWNER,
        Admin_Role_Owner,
        Admin_Role_Manager,
        Admin_Role_SITEMANAGER,
        ..
      ),

    -- * Invitation_Role
    Invitation_Role
      (
        Invitation_Role_ADMINROLEUNSPECIFIED,
        Invitation_Role_PRIMARYOWNER,
        Invitation_Role_Owner,
        Invitation_Role_Manager,
        Invitation_Role_SITEMANAGER,
        ..
      ),

    -- * Invitation_TargetType
    Invitation_TargetType
      (
        Invitation_TargetType_TARGETTYPEUNSPECIFIED,
        Invitation_TargetType_ACCOUNTSONLY,
        Invitation_TargetType_LOCATIONSONLY,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Output only. Specifies the permission level the user has for this account.
newtype Account_PermissionLevel = Account_PermissionLevel { fromAccount_PermissionLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Account_PermissionLevel_PERMISSIONLEVELUNSPECIFIED :: Account_PermissionLevel
pattern Account_PermissionLevel_PERMISSIONLEVELUNSPECIFIED = Account_PermissionLevel "PERMISSION_LEVEL_UNSPECIFIED"

-- | The user has owner level permission.
pattern Account_PermissionLevel_OWNERLEVEL :: Account_PermissionLevel
pattern Account_PermissionLevel_OWNERLEVEL = Account_PermissionLevel "OWNER_LEVEL"

-- | The user has member level permission.
pattern Account_PermissionLevel_MEMBERLEVEL :: Account_PermissionLevel
pattern Account_PermissionLevel_MEMBERLEVEL = Account_PermissionLevel "MEMBER_LEVEL"

{-# COMPLETE
  Account_PermissionLevel_PERMISSIONLEVELUNSPECIFIED,
  Account_PermissionLevel_OWNERLEVEL,
  Account_PermissionLevel_MEMBERLEVEL,
  Account_PermissionLevel #-}

-- | Output only. Specifies the AccountRole of this account.
newtype Account_Role = Account_Role { fromAccount_Role :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Account_Role_ACCOUNTROLEUNSPECIFIED :: Account_Role
pattern Account_Role_ACCOUNTROLEUNSPECIFIED = Account_Role "ACCOUNT_ROLE_UNSPECIFIED"

-- | The user is the primary owner this account.
pattern Account_Role_PRIMARYOWNER :: Account_Role
pattern Account_Role_PRIMARYOWNER = Account_Role "PRIMARY_OWNER"

-- | The user owner of the account.
pattern Account_Role_Owner :: Account_Role
pattern Account_Role_Owner = Account_Role "OWNER"

-- | The user can manage this account.
pattern Account_Role_Manager :: Account_Role
pattern Account_Role_Manager = Account_Role "MANAGER"

-- | The user can manage a limited set of features for the account.
pattern Account_Role_SITEMANAGER :: Account_Role
pattern Account_Role_SITEMANAGER = Account_Role "SITE_MANAGER"

{-# COMPLETE
  Account_Role_ACCOUNTROLEUNSPECIFIED,
  Account_Role_PRIMARYOWNER,
  Account_Role_Owner,
  Account_Role_Manager,
  Account_Role_SITEMANAGER,
  Account_Role #-}

-- | Required. Contains the type of account. Accounts of type PERSONAL and ORGANIZATION cannot be created using this API.
newtype Account_Type = Account_Type { fromAccount_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Account_Type_ACCOUNTTYPEUNSPECIFIED :: Account_Type
pattern Account_Type_ACCOUNTTYPEUNSPECIFIED = Account_Type "ACCOUNT_TYPE_UNSPECIFIED"

-- | An end-user account.
pattern Account_Type_Personal :: Account_Type
pattern Account_Type_Personal = Account_Type "PERSONAL"

-- | A group of Locations. For more information, see the [help center article] (https:\/\/support.google.com\/business\/answer\/6085326)
pattern Account_Type_LOCATIONGROUP :: Account_Type
pattern Account_Type_LOCATIONGROUP = Account_Type "LOCATION_GROUP"

-- | A User Group for segregating organization staff in groups. For more information, see the <https://support.google.com/business/answer/7655731 help center article>
pattern Account_Type_USERGROUP :: Account_Type
pattern Account_Type_USERGROUP = Account_Type "USER_GROUP"

-- | An organization representing a company. For more information, see the <https://support.google.com/business/answer/7663063 help center article>
pattern Account_Type_Organization :: Account_Type
pattern Account_Type_Organization = Account_Type "ORGANIZATION"

{-# COMPLETE
  Account_Type_ACCOUNTTYPEUNSPECIFIED,
  Account_Type_Personal,
  Account_Type_LOCATIONGROUP,
  Account_Type_USERGROUP,
  Account_Type_Organization,
  Account_Type #-}

-- | Output only. If verified, future locations that are created are automatically connected to Google Maps, and have Google+ pages created, without requiring moderation.
newtype Account_VerificationState = Account_VerificationState { fromAccount_VerificationState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Account_VerificationState_VERIFICATIONSTATEUNSPECIFIED :: Account_VerificationState
pattern Account_VerificationState_VERIFICATIONSTATEUNSPECIFIED = Account_VerificationState "VERIFICATION_STATE_UNSPECIFIED"

-- | Verified account.
pattern Account_VerificationState_Verified :: Account_VerificationState
pattern Account_VerificationState_Verified = Account_VerificationState "VERIFIED"

-- | Account that is not verified, and verification has not been requested.
pattern Account_VerificationState_Unverified :: Account_VerificationState
pattern Account_VerificationState_Unverified = Account_VerificationState "UNVERIFIED"

-- | Account that is not verified, but verification has been requested.
pattern Account_VerificationState_VERIFICATIONREQUESTED :: Account_VerificationState
pattern Account_VerificationState_VERIFICATIONREQUESTED = Account_VerificationState "VERIFICATION_REQUESTED"

{-# COMPLETE
  Account_VerificationState_VERIFICATIONSTATEUNSPECIFIED,
  Account_VerificationState_Verified,
  Account_VerificationState_Unverified,
  Account_VerificationState_VERIFICATIONREQUESTED,
  Account_VerificationState #-}

-- | Output only. Indicates whether the account is vetted by Google. A vetted account is able to verify locations via the VETTED_PARTNER method.
newtype Account_VettedState = Account_VettedState { fromAccount_VettedState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not Specified
pattern Account_VettedState_VETTEDSTATEUNSPECIFIED :: Account_VettedState
pattern Account_VettedState_VETTEDSTATEUNSPECIFIED = Account_VettedState "VETTED_STATE_UNSPECIFIED"

-- | The account is not vetted by Google.
pattern Account_VettedState_NOTVETTED :: Account_VettedState
pattern Account_VettedState_NOTVETTED = Account_VettedState "NOT_VETTED"

-- | The account is vetted by Google and in a valid state. An account is automatically vetted if it has direct access to a vetted group account.
pattern Account_VettedState_Vetted :: Account_VettedState
pattern Account_VettedState_Vetted = Account_VettedState "VETTED"

-- | The account is vetted but in an invalid state. The account will behave like an unvetted account.
pattern Account_VettedState_Invalid :: Account_VettedState
pattern Account_VettedState_Invalid = Account_VettedState "INVALID"

{-# COMPLETE
  Account_VettedState_VETTEDSTATEUNSPECIFIED,
  Account_VettedState_NOTVETTED,
  Account_VettedState_Vetted,
  Account_VettedState_Invalid,
  Account_VettedState #-}

-- | Required. Specifies the role that this admin uses with the specified Account or Location.
newtype Admin_Role = Admin_Role { fromAdmin_Role :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Admin_Role_ADMINROLEUNSPECIFIED :: Admin_Role
pattern Admin_Role_ADMINROLEUNSPECIFIED = Admin_Role "ADMIN_ROLE_UNSPECIFIED"

-- | The admin has owner-level access and is the primary owner. (Displays as \'Primary Owner\' in UI).
pattern Admin_Role_PRIMARYOWNER :: Admin_Role
pattern Admin_Role_PRIMARYOWNER = Admin_Role "PRIMARY_OWNER"

-- | The admin has owner-level access. (Displays as \'Owner\' in UI).
pattern Admin_Role_Owner :: Admin_Role
pattern Admin_Role_Owner = Admin_Role "OWNER"

-- | The admin has managerial access.
pattern Admin_Role_Manager :: Admin_Role
pattern Admin_Role_Manager = Admin_Role "MANAGER"

-- | The admin can manage social (Google+) pages. (Displays as \'Site Manager\' in UI). This API doesn\'t allow creating an account admin with a SITE_MANAGER role.
pattern Admin_Role_SITEMANAGER :: Admin_Role
pattern Admin_Role_SITEMANAGER = Admin_Role "SITE_MANAGER"

{-# COMPLETE
  Admin_Role_ADMINROLEUNSPECIFIED,
  Admin_Role_PRIMARYOWNER,
  Admin_Role_Owner,
  Admin_Role_Manager,
  Admin_Role_SITEMANAGER,
  Admin_Role #-}

-- | Output only. The invited role on the account.
newtype Invitation_Role = Invitation_Role { fromInvitation_Role :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Invitation_Role_ADMINROLEUNSPECIFIED :: Invitation_Role
pattern Invitation_Role_ADMINROLEUNSPECIFIED = Invitation_Role "ADMIN_ROLE_UNSPECIFIED"

-- | The admin has owner-level access and is the primary owner. (Displays as \'Primary Owner\' in UI).
pattern Invitation_Role_PRIMARYOWNER :: Invitation_Role
pattern Invitation_Role_PRIMARYOWNER = Invitation_Role "PRIMARY_OWNER"

-- | The admin has owner-level access. (Displays as \'Owner\' in UI).
pattern Invitation_Role_Owner :: Invitation_Role
pattern Invitation_Role_Owner = Invitation_Role "OWNER"

-- | The admin has managerial access.
pattern Invitation_Role_Manager :: Invitation_Role
pattern Invitation_Role_Manager = Invitation_Role "MANAGER"

-- | The admin can manage social (Google+) pages. (Displays as \'Site Manager\' in UI). This API doesn\'t allow creating an account admin with a SITE_MANAGER role.
pattern Invitation_Role_SITEMANAGER :: Invitation_Role
pattern Invitation_Role_SITEMANAGER = Invitation_Role "SITE_MANAGER"

{-# COMPLETE
  Invitation_Role_ADMINROLEUNSPECIFIED,
  Invitation_Role_PRIMARYOWNER,
  Invitation_Role_Owner,
  Invitation_Role_Manager,
  Invitation_Role_SITEMANAGER,
  Invitation_Role #-}

-- | Output only. Specifies which target types should appear in the response.
newtype Invitation_TargetType = Invitation_TargetType { fromInvitation_TargetType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Set when target type is unspecified.
pattern Invitation_TargetType_TARGETTYPEUNSPECIFIED :: Invitation_TargetType
pattern Invitation_TargetType_TARGETTYPEUNSPECIFIED = Invitation_TargetType "TARGET_TYPE_UNSPECIFIED"

-- | List invitations only for targets of type Account.
pattern Invitation_TargetType_ACCOUNTSONLY :: Invitation_TargetType
pattern Invitation_TargetType_ACCOUNTSONLY = Invitation_TargetType "ACCOUNTS_ONLY"

-- | List invitations only for targets of type Location.
pattern Invitation_TargetType_LOCATIONSONLY :: Invitation_TargetType
pattern Invitation_TargetType_LOCATIONSONLY = Invitation_TargetType "LOCATIONS_ONLY"

{-# COMPLETE
  Invitation_TargetType_TARGETTYPEUNSPECIFIED,
  Invitation_TargetType_ACCOUNTSONLY,
  Invitation_TargetType_LOCATIONSONLY,
  Invitation_TargetType #-}
