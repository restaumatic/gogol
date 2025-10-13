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
-- Module      : Gogol.MyBusinessBusinessInformation.Accounts.Locations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the locations for the specified account.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.accounts.locations.list@.
module Gogol.MyBusinessBusinessInformation.Accounts.Locations.List
    (
    -- * Resource
      MyBusinessBusinessInformationAccountsLocationsListResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationAccountsLocationsList (..)
    , newMyBusinessBusinessInformationAccountsLocationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.accounts.locations.list@ method which the
-- 'MyBusinessBusinessInformationAccountsLocationsList' request conforms to.
type MyBusinessBusinessInformationAccountsLocationsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "locations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "orderBy" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "readMask" Core.FieldMask Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ListLocationsResponse

-- | Lists the locations for the specified account.
--
-- /See:/ 'newMyBusinessBusinessInformationAccountsLocationsList' smart constructor.
data MyBusinessBusinessInformationAccountsLocationsList = MyBusinessBusinessInformationAccountsLocationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A filter constraining the locations to return. The response includes only entries that match the filter. If @filter@ is empty, then constraints are applied and all locations (paginated) are retrieved for the requested account. For more information about valid fields and example usage, see <https://developers.google.com/my-business/content/location-data#filter_results_when_you_list_locations Work with Location Data Guide>.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. Sorting order for the request. Multiple fields should be comma-separated, following SQL syntax. The default sorting order is ascending. To specify descending order, a suffix \" desc\" should be added. Valid fields to order/by are title and store/code. For example: \"title, store/code desc\" or \"title\" or \"store/code desc\"
    , orderBy :: (Core.Maybe Core.Text)
      -- | Optional. How many locations to fetch per page. Default value is 10 if not set. Minimum is 1, and maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If specified, it fetches the next @page@ of locations. The page token is returned by previous calls to @ListLocations@ when there were more locations than could fit in the requested page size.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the account to fetch locations from. If the parent Account is of AccountType PERSONAL, only Locations that are directly owned by the Account are returned, otherwise it will return all accessible locations from the Account, either directly or indirectly.
    , parent :: Core.Text
      -- | Required. Read mask to specify what fields will be returned in the response.
    , readMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationAccountsLocationsList' with the minimum fields required to make a request.
newMyBusinessBusinessInformationAccountsLocationsList 
    :: 
                                                      Core.Text
       -- ^  Required. The name of the account to fetch locations from. If the parent Account is of AccountType PERSONAL, only Locations that are directly owned by the Account are returned, otherwise it will return all accessible locations from the Account, either directly or indirectly. See 'parent'.
    -> MyBusinessBusinessInformationAccountsLocationsList
newMyBusinessBusinessInformationAccountsLocationsList parent
  = MyBusinessBusinessInformationAccountsLocationsList{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing,
                                                       filter = Core.Nothing,
                                                       orderBy = Core.Nothing,
                                                       pageSize = Core.Nothing,
                                                       pageToken = Core.Nothing, parent = parent,
                                                       readMask = Core.Nothing,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationAccountsLocationsList
         where
        type Rs MyBusinessBusinessInformationAccountsLocationsList =
             ListLocationsResponse
        type Scopes MyBusinessBusinessInformationAccountsLocationsList =
             '[]
        requestClient
          MyBusinessBusinessInformationAccountsLocationsList{..}
          = go parent xgafv accessToken callback filter orderBy pageSize
              pageToken
              readMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationAccountsLocationsListResource)
                      Core.mempty

