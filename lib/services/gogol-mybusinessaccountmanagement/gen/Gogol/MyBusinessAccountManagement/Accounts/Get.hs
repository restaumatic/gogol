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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified account. Returns @NOT_FOUND@ if the account does not exist or if the caller does not have access rights to it.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.get@.
module Gogol.MyBusinessAccountManagement.Accounts.Get
    (
    -- * Resource
      MyBusinessAccountManagementAccountsGetResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsGet (..)
    , newMyBusinessAccountManagementAccountsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.get@ method which the
-- 'MyBusinessAccountManagementAccountsGet' request conforms to.
type MyBusinessAccountManagementAccountsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Account

-- | Gets the specified account. Returns @NOT_FOUND@ if the account does not exist or if the caller does not have access rights to it.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsGet' smart constructor.
data MyBusinessAccountManagementAccountsGet = MyBusinessAccountManagementAccountsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the account to fetch.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsGet' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsGet 
    :: 
                                          Core.Text
       -- ^  Required. The name of the account to fetch. See 'name'.
    -> MyBusinessAccountManagementAccountsGet
newMyBusinessAccountManagementAccountsGet name
  = MyBusinessAccountManagementAccountsGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           name = name, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest MyBusinessAccountManagementAccountsGet
         where
        type Rs MyBusinessAccountManagementAccountsGet = Account
        type Scopes MyBusinessAccountManagementAccountsGet = '[]
        requestClient MyBusinessAccountManagementAccountsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsGetResource)
                      Core.mempty

