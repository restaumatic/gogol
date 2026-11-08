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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Invitations.Accept
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts the specified invitation.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.invitations.accept@.
module Gogol.MyBusinessAccountManagement.Accounts.Invitations.Accept
    (
    -- * Resource
      MyBusinessAccountManagementAccountsInvitationsAcceptResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsInvitationsAccept (..)
    , newMyBusinessAccountManagementAccountsInvitationsAccept
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.invitations.accept@ method which the
-- 'MyBusinessAccountManagementAccountsInvitationsAccept' request conforms to.
type MyBusinessAccountManagementAccountsInvitationsAcceptResource =
     "v1" Core.:>
       Core.CaptureMode "name" "accept" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AcceptInvitationRequest Core.:>
                       Core.Post '[Core.JSON] Empty

-- | Accepts the specified invitation.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsInvitationsAccept' smart constructor.
data MyBusinessAccountManagementAccountsInvitationsAccept = MyBusinessAccountManagementAccountsInvitationsAccept
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the invitation that is being accepted. @accounts\/{account_id}\/invitations\/{invitation_id}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AcceptInvitationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsInvitationsAccept' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsInvitationsAccept 
    :: 
                                                        Core.Text
       -- ^  Required. The name of the invitation that is being accepted. @accounts\/{account_id}\/invitations\/{invitation_id}@ See 'name'.
    -> AcceptInvitationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementAccountsInvitationsAccept
newMyBusinessAccountManagementAccountsInvitationsAccept name
  payload
  = MyBusinessAccountManagementAccountsInvitationsAccept{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing, name = name,
                                                         payload = payload,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsInvitationsAccept
         where
        type Rs MyBusinessAccountManagementAccountsInvitationsAccept =
             Empty
        type Scopes MyBusinessAccountManagementAccountsInvitationsAccept =
             '[]
        requestClient
          MyBusinessAccountManagementAccountsInvitationsAccept{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessAccountManagementAccountsInvitationsAcceptResource)
                      Core.mempty

