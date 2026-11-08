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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an account with the specified name and type under the given parent. - Personal accounts and Organizations cannot be created. - User Groups cannot be created with a Personal account as primary owner. - Location Groups cannot be created with a primary owner of a Personal account if the Personal account is in an Organization. - Location Groups cannot own Location Groups.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.create@.
module Gogol.MyBusinessAccountManagement.Accounts.Create
    (
    -- * Resource
      MyBusinessAccountManagementAccountsCreateResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsCreate (..)
    , newMyBusinessAccountManagementAccountsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.create@ method which the
-- 'MyBusinessAccountManagementAccountsCreate' request conforms to.
type MyBusinessAccountManagementAccountsCreateResource =
     "v1" Core.:>
       "accounts" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Account Core.:>
                       Core.Post '[Core.JSON] Account

-- | Creates an account with the specified name and type under the given parent. - Personal accounts and Organizations cannot be created. - User Groups cannot be created with a Personal account as primary owner. - Location Groups cannot be created with a primary owner of a Personal account if the Personal account is in an Organization. - Location Groups cannot own Location Groups.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsCreate' smart constructor.
data MyBusinessAccountManagementAccountsCreate = MyBusinessAccountManagementAccountsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Account
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsCreate' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsCreate 
    :: 
                                             Account
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementAccountsCreate
newMyBusinessAccountManagementAccountsCreate payload
  = MyBusinessAccountManagementAccountsCreate{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              payload = payload, uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsCreate
         where
        type Rs MyBusinessAccountManagementAccountsCreate = Account
        type Scopes MyBusinessAccountManagementAccountsCreate = '[]
        requestClient MyBusinessAccountManagementAccountsCreate{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsCreateResource)
                      Core.mempty

