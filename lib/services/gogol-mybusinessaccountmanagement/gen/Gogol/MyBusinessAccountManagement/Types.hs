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
-- Module      : Gogol.MyBusinessAccountManagement.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessAccountManagement.Types
    (
    -- * Configuration
      myBusinessAccountManagementService

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

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Internal.Product
import Gogol.MyBusinessAccountManagement.Internal.Sum

-- | Default request referring to version @v1@ of the My Business Account Management API. This contains the host and root path used as a starting point for constructing service requests.
myBusinessAccountManagementService :: Core.ServiceConfig
myBusinessAccountManagementService
  = Core.defaultService
      (Core.ServiceId "mybusinessaccountmanagement:v1")
      "mybusinessaccountmanagement.googleapis.com"
