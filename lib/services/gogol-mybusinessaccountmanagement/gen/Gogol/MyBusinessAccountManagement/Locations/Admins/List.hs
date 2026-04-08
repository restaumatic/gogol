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
-- Module      : Gogol.MyBusinessAccountManagement.Locations.Admins.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the admins for the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.locations.admins.list@.
module Gogol.MyBusinessAccountManagement.Locations.Admins.List
    (
    -- * Resource
      MyBusinessAccountManagementLocationsAdminsListResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementLocationsAdminsList (..)
    , newMyBusinessAccountManagementLocationsAdminsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.locations.admins.list@ method which the
-- 'MyBusinessAccountManagementLocationsAdminsList' request conforms to.
type MyBusinessAccountManagementLocationsAdminsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "admins" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] ListLocationAdminsResponse

-- | Lists all of the admins for the specified location.
--
-- /See:/ 'newMyBusinessAccountManagementLocationsAdminsList' smart constructor.
data MyBusinessAccountManagementLocationsAdminsList = MyBusinessAccountManagementLocationsAdminsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the location to list admins of. @locations\/{location_id}\/admins@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementLocationsAdminsList' with the minimum fields required to make a request.
newMyBusinessAccountManagementLocationsAdminsList 
    :: 
                                                  Core.Text
       -- ^  Required. The name of the location to list admins of. @locations\/{location_id}\/admins@. See 'parent'.
    -> MyBusinessAccountManagementLocationsAdminsList
newMyBusinessAccountManagementLocationsAdminsList parent
  = MyBusinessAccountManagementLocationsAdminsList{xgafv =
                                                     Core.Nothing,
                                                   accessToken = Core.Nothing,
                                                   callback = Core.Nothing, parent = parent,
                                                   uploadType = Core.Nothing,
                                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementLocationsAdminsList
         where
        type Rs MyBusinessAccountManagementLocationsAdminsList =
             ListLocationAdminsResponse
        type Scopes MyBusinessAccountManagementLocationsAdminsList = '[]
        requestClient MyBusinessAccountManagementLocationsAdminsList{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementLocationsAdminsListResource)
                      Core.mempty

