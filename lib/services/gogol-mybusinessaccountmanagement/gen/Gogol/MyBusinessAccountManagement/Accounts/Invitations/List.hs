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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Invitations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists pending invitations for the specified account.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.invitations.list@.
module Gogol.MyBusinessAccountManagement.Accounts.Invitations.List
    (
    -- * Resource
      MyBusinessAccountManagementAccountsInvitationsListResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsInvitationsList (..)
    , newMyBusinessAccountManagementAccountsInvitationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.invitations.list@ method which the
-- 'MyBusinessAccountManagementAccountsInvitationsList' request conforms to.
type MyBusinessAccountManagementAccountsInvitationsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "invitations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListInvitationsResponse

-- | Lists pending invitations for the specified account.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsInvitationsList' smart constructor.
data MyBusinessAccountManagementAccountsInvitationsList = MyBusinessAccountManagementAccountsInvitationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filtering the response is supported via the Invitation.target_type field.
    , filter :: (Core.Maybe Core.Text)
      -- | Required. The name of the account from which the list of invitations is being retrieved. @accounts\/{account_id}\/invitations@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsInvitationsList' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsInvitationsList 
    :: 
                                                      Core.Text
       -- ^  Required. The name of the account from which the list of invitations is being retrieved. @accounts\/{account_id}\/invitations@ See 'parent'.
    -> MyBusinessAccountManagementAccountsInvitationsList
newMyBusinessAccountManagementAccountsInvitationsList parent
  = MyBusinessAccountManagementAccountsInvitationsList{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing,
                                                       filter = Core.Nothing, parent = parent,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsInvitationsList
         where
        type Rs MyBusinessAccountManagementAccountsInvitationsList =
             ListInvitationsResponse
        type Scopes MyBusinessAccountManagementAccountsInvitationsList =
             '[]
        requestClient
          MyBusinessAccountManagementAccountsInvitationsList{..}
          = go parent xgafv accessToken callback filter uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessAccountManagementAccountsInvitationsListResource)
                      Core.mempty

