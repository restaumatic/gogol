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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the accounts for the authenticated user. This includes all accounts that the user owns, as well as any accounts for which the user has management rights.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.list@.
module Gogol.MyBusinessAccountManagement.Accounts.List
    (
    -- * Resource
      MyBusinessAccountManagementAccountsListResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsList (..)
    , newMyBusinessAccountManagementAccountsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.list@ method which the
-- 'MyBusinessAccountManagementAccountsList' request conforms to.
type MyBusinessAccountManagementAccountsListResource =
     "v1" Core.:>
       "accounts" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "parentAccount" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListAccountsResponse

-- | Lists all of the accounts for the authenticated user. This includes all accounts that the user owns, as well as any accounts for which the user has management rights.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsList' smart constructor.
data MyBusinessAccountManagementAccountsList = MyBusinessAccountManagementAccountsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A filter constraining the accounts to return. The response includes only entries that match the filter. If @filter@ is empty, then no constraints are applied and all accounts (paginated) are retrieved for the requested account. For example, a request with the filter @type=USER_GROUP@ will only return user groups. The @type@ field is the only supported filter.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. How many accounts to fetch per page. The default and maximum is 20.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If specified, the next page of accounts is retrieved. The @pageToken@ is returned when a call to @accounts.list@ returns more results than can fit into the requested page size.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Optional. The resource name of the account for which the list of directly accessible accounts is to be retrieved. This only makes sense for Organizations and User Groups. If empty, will return @ListAccounts@ for the authenticated user. @accounts\/{account_id}@.
    , parentAccount :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsList' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsList 
    :: 
                                           MyBusinessAccountManagementAccountsList
newMyBusinessAccountManagementAccountsList
  = MyBusinessAccountManagementAccountsList{xgafv = Core.Nothing,
                                            accessToken = Core.Nothing, callback = Core.Nothing,
                                            filter = Core.Nothing, pageSize = Core.Nothing,
                                            pageToken = Core.Nothing, parentAccount = Core.Nothing,
                                            uploadType = Core.Nothing,
                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest MyBusinessAccountManagementAccountsList
         where
        type Rs MyBusinessAccountManagementAccountsList =
             ListAccountsResponse
        type Scopes MyBusinessAccountManagementAccountsList = '[]
        requestClient MyBusinessAccountManagementAccountsList{..}
          = go xgafv accessToken callback filter pageSize pageToken
              parentAccount
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsListResource)
                      Core.mempty

