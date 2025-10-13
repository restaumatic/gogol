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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Admins.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invites the specified user to become an administrator for the specified account. The invitee must accept the invitation in order to be granted access to the account. See AcceptInvitation to programmatically accept an invitation.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.admins.create@.
module Gogol.MyBusinessAccountManagement.Accounts.Admins.Create
    (
    -- * Resource
      MyBusinessAccountManagementAccountsAdminsCreateResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsAdminsCreate (..)
    , newMyBusinessAccountManagementAccountsAdminsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.admins.create@ method which the
-- 'MyBusinessAccountManagementAccountsAdminsCreate' request conforms to.
type MyBusinessAccountManagementAccountsAdminsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "admins" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Admin Core.:>
                         Core.Post '[Core.JSON] Admin

-- | Invites the specified user to become an administrator for the specified account. The invitee must accept the invitation in order to be granted access to the account. See AcceptInvitation to programmatically accept an invitation.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsAdminsCreate' smart constructor.
data MyBusinessAccountManagementAccountsAdminsCreate = MyBusinessAccountManagementAccountsAdminsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the account this admin is created for. @accounts\/{account_id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Admin
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsAdminsCreate' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsAdminsCreate 
    :: 
                                                   Core.Text
       -- ^  Required. The resource name of the account this admin is created for. @accounts\/{account_id}@. See 'parent'.
    -> Admin
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementAccountsAdminsCreate
newMyBusinessAccountManagementAccountsAdminsCreate parent payload
  = MyBusinessAccountManagementAccountsAdminsCreate{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing, parent = parent,
                                                    payload = payload, uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsAdminsCreate
         where
        type Rs MyBusinessAccountManagementAccountsAdminsCreate = Admin
        type Scopes MyBusinessAccountManagementAccountsAdminsCreate = '[]
        requestClient MyBusinessAccountManagementAccountsAdminsCreate{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsAdminsCreateResource)
                      Core.mempty

