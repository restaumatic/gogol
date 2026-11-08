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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Admins.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified admin from the specified account.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.admins.delete@.
module Gogol.MyBusinessAccountManagement.Accounts.Admins.Delete
    (
    -- * Resource
      MyBusinessAccountManagementAccountsAdminsDeleteResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsAdminsDelete (..)
    , newMyBusinessAccountManagementAccountsAdminsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.admins.delete@ method which the
-- 'MyBusinessAccountManagementAccountsAdminsDelete' request conforms to.
type MyBusinessAccountManagementAccountsAdminsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Removes the specified admin from the specified account.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsAdminsDelete' smart constructor.
data MyBusinessAccountManagementAccountsAdminsDelete = MyBusinessAccountManagementAccountsAdminsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the admin to remove from the account. @accounts\/{account_id}\/admins\/{admin_id}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsAdminsDelete' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsAdminsDelete 
    :: 
                                                   Core.Text
       -- ^  Required. The resource name of the admin to remove from the account. @accounts\/{account_id}\/admins\/{admin_id}@. See 'name'.
    -> MyBusinessAccountManagementAccountsAdminsDelete
newMyBusinessAccountManagementAccountsAdminsDelete name
  = MyBusinessAccountManagementAccountsAdminsDelete{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing, name = name,
                                                    uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsAdminsDelete
         where
        type Rs MyBusinessAccountManagementAccountsAdminsDelete = Empty
        type Scopes MyBusinessAccountManagementAccountsAdminsDelete = '[]
        requestClient MyBusinessAccountManagementAccountsAdminsDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsAdminsDeleteResource)
                      Core.mempty

