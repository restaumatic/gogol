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
-- Module      : Gogol.MyBusinessAccountManagement
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The My Business Account Management API provides an interface for managing access to a location on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference>
module Gogol.MyBusinessAccountManagement
    (
    -- * Configuration
      myBusinessAccountManagementService

    -- * Resources

    -- ** mybusinessaccountmanagement.accounts.admins.create
    , MyBusinessAccountManagementAccountsAdminsCreateResource
    , MyBusinessAccountManagementAccountsAdminsCreate (..)
    , newMyBusinessAccountManagementAccountsAdminsCreate

    -- ** mybusinessaccountmanagement.accounts.admins.delete
    , MyBusinessAccountManagementAccountsAdminsDeleteResource
    , MyBusinessAccountManagementAccountsAdminsDelete (..)
    , newMyBusinessAccountManagementAccountsAdminsDelete

    -- ** mybusinessaccountmanagement.accounts.admins.list
    , MyBusinessAccountManagementAccountsAdminsListResource
    , MyBusinessAccountManagementAccountsAdminsList (..)
    , newMyBusinessAccountManagementAccountsAdminsList

    -- ** mybusinessaccountmanagement.accounts.admins.patch
    , MyBusinessAccountManagementAccountsAdminsPatchResource
    , MyBusinessAccountManagementAccountsAdminsPatch (..)
    , newMyBusinessAccountManagementAccountsAdminsPatch

    -- ** mybusinessaccountmanagement.accounts.create
    , MyBusinessAccountManagementAccountsCreateResource
    , MyBusinessAccountManagementAccountsCreate (..)
    , newMyBusinessAccountManagementAccountsCreate

    -- ** mybusinessaccountmanagement.accounts.get
    , MyBusinessAccountManagementAccountsGetResource
    , MyBusinessAccountManagementAccountsGet (..)
    , newMyBusinessAccountManagementAccountsGet

    -- ** mybusinessaccountmanagement.accounts.invitations.accept
    , MyBusinessAccountManagementAccountsInvitationsAcceptResource
    , MyBusinessAccountManagementAccountsInvitationsAccept (..)
    , newMyBusinessAccountManagementAccountsInvitationsAccept

    -- ** mybusinessaccountmanagement.accounts.invitations.decline
    , MyBusinessAccountManagementAccountsInvitationsDeclineResource
    , MyBusinessAccountManagementAccountsInvitationsDecline (..)
    , newMyBusinessAccountManagementAccountsInvitationsDecline

    -- ** mybusinessaccountmanagement.accounts.invitations.list
    , MyBusinessAccountManagementAccountsInvitationsListResource
    , MyBusinessAccountManagementAccountsInvitationsList (..)
    , newMyBusinessAccountManagementAccountsInvitationsList

    -- ** mybusinessaccountmanagement.accounts.list
    , MyBusinessAccountManagementAccountsListResource
    , MyBusinessAccountManagementAccountsList (..)
    , newMyBusinessAccountManagementAccountsList

    -- ** mybusinessaccountmanagement.accounts.patch
    , MyBusinessAccountManagementAccountsPatchResource
    , MyBusinessAccountManagementAccountsPatch (..)
    , newMyBusinessAccountManagementAccountsPatch

    -- ** mybusinessaccountmanagement.locations.admins.create
    , MyBusinessAccountManagementLocationsAdminsCreateResource
    , MyBusinessAccountManagementLocationsAdminsCreate (..)
    , newMyBusinessAccountManagementLocationsAdminsCreate

    -- ** mybusinessaccountmanagement.locations.admins.delete
    , MyBusinessAccountManagementLocationsAdminsDeleteResource
    , MyBusinessAccountManagementLocationsAdminsDelete (..)
    , newMyBusinessAccountManagementLocationsAdminsDelete

    -- ** mybusinessaccountmanagement.locations.admins.list
    , MyBusinessAccountManagementLocationsAdminsListResource
    , MyBusinessAccountManagementLocationsAdminsList (..)
    , newMyBusinessAccountManagementLocationsAdminsList

    -- ** mybusinessaccountmanagement.locations.admins.patch
    , MyBusinessAccountManagementLocationsAdminsPatchResource
    , MyBusinessAccountManagementLocationsAdminsPatch (..)
    , newMyBusinessAccountManagementLocationsAdminsPatch

    -- ** mybusinessaccountmanagement.locations.transfer
    , MyBusinessAccountManagementLocationsTransferResource
    , MyBusinessAccountManagementLocationsTransfer (..)
    , newMyBusinessAccountManagementLocationsTransfer

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AcceptInvitationRequest
    , AcceptInvitationRequest (..)
    , newAcceptInvitationRequest

    -- ** Account
    , Account (..)
    , newAccount

    -- ** Account_PermissionLevel
    , Account_PermissionLevel (..)

    -- ** Account_Role
    , Account_Role (..)

    -- ** Account_Type
    , Account_Type (..)

    -- ** Account_VerificationState
    , Account_VerificationState (..)

    -- ** Account_VettedState
    , Account_VettedState (..)

    -- ** Admin
    , Admin (..)
    , newAdmin

    -- ** Admin_Role
    , Admin_Role (..)

    -- ** DeclineInvitationRequest
    , DeclineInvitationRequest (..)
    , newDeclineInvitationRequest

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Invitation
    , Invitation (..)
    , newInvitation

    -- ** Invitation_Role
    , Invitation_Role (..)

    -- ** Invitation_TargetType
    , Invitation_TargetType (..)

    -- ** ListAccountAdminsResponse
    , ListAccountAdminsResponse (..)
    , newListAccountAdminsResponse

    -- ** ListAccountsResponse
    , ListAccountsResponse (..)
    , newListAccountsResponse

    -- ** ListInvitationsResponse
    , ListInvitationsResponse (..)
    , newListInvitationsResponse

    -- ** ListLocationAdminsResponse
    , ListLocationAdminsResponse (..)
    , newListLocationAdminsResponse

    -- ** OrganizationInfo
    , OrganizationInfo (..)
    , newOrganizationInfo

    -- ** PostalAddress
    , PostalAddress (..)
    , newPostalAddress

    -- ** TargetLocation
    , TargetLocation (..)
    , newTargetLocation

    -- ** TransferLocationRequest
    , TransferLocationRequest (..)
    , newTransferLocationRequest
    ) where

import Gogol.MyBusinessAccountManagement.Accounts.Admins.Create
import Gogol.MyBusinessAccountManagement.Accounts.Admins.Delete
import Gogol.MyBusinessAccountManagement.Accounts.Admins.List
import Gogol.MyBusinessAccountManagement.Accounts.Admins.Patch
import Gogol.MyBusinessAccountManagement.Accounts.Create
import Gogol.MyBusinessAccountManagement.Accounts.Get
import Gogol.MyBusinessAccountManagement.Accounts.Invitations.Accept
import Gogol.MyBusinessAccountManagement.Accounts.Invitations.Decline
import Gogol.MyBusinessAccountManagement.Accounts.Invitations.List
import Gogol.MyBusinessAccountManagement.Accounts.List
import Gogol.MyBusinessAccountManagement.Accounts.Patch
import Gogol.MyBusinessAccountManagement.Locations.Admins.Create
import Gogol.MyBusinessAccountManagement.Locations.Admins.Delete
import Gogol.MyBusinessAccountManagement.Locations.Admins.List
import Gogol.MyBusinessAccountManagement.Locations.Admins.Patch
import Gogol.MyBusinessAccountManagement.Locations.Transfer
import Gogol.MyBusinessAccountManagement.Types
