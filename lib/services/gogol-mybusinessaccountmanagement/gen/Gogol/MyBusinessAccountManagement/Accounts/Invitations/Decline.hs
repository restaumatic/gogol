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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Invitations.Decline
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Declines the specified invitation.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.invitations.decline@.
module Gogol.MyBusinessAccountManagement.Accounts.Invitations.Decline
    (
    -- * Resource
      MyBusinessAccountManagementAccountsInvitationsDeclineResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsInvitationsDecline (..)
    , newMyBusinessAccountManagementAccountsInvitationsDecline
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.invitations.decline@ method which the
-- 'MyBusinessAccountManagementAccountsInvitationsDecline' request conforms to.
type MyBusinessAccountManagementAccountsInvitationsDeclineResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "decline" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DeclineInvitationRequest Core.:>
                       Core.Post '[Core.JSON] Empty

-- | Declines the specified invitation.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsInvitationsDecline' smart constructor.
data MyBusinessAccountManagementAccountsInvitationsDecline = MyBusinessAccountManagementAccountsInvitationsDecline
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the account invitation that is being declined. @accounts\/{account_id}\/invitations\/{invitation_id}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DeclineInvitationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsInvitationsDecline' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsInvitationsDecline 
    :: 
                                                         Core.Text
       -- ^  Required. The name of the account invitation that is being declined. @accounts\/{account_id}\/invitations\/{invitation_id}@ See 'name'.
    -> DeclineInvitationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementAccountsInvitationsDecline
newMyBusinessAccountManagementAccountsInvitationsDecline name
  payload
  = MyBusinessAccountManagementAccountsInvitationsDecline{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          payload = payload,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsInvitationsDecline
         where
        type Rs MyBusinessAccountManagementAccountsInvitationsDecline =
             Empty
        type Scopes MyBusinessAccountManagementAccountsInvitationsDecline =
             '[]
        requestClient
          MyBusinessAccountManagementAccountsInvitationsDecline{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessAccountManagementAccountsInvitationsDeclineResource)
                      Core.mempty

