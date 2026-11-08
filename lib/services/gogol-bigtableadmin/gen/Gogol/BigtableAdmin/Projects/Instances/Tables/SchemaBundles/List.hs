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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all schema bundles associated with the specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.schemaBundles.list@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.List
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesSchemaBundlesListResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesSchemaBundlesList (..)
    , newBigtableAdminProjectsInstancesTablesSchemaBundlesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.schemaBundles.list@ method which the
-- 'BigtableAdminProjectsInstancesTablesSchemaBundlesList' request conforms to.
type BigtableAdminProjectsInstancesTablesSchemaBundlesListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "schemaBundles" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "view" ProjectsInstancesTablesSchemaBundlesListView
                           Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListSchemaBundlesResponse

-- | Lists all schema bundles associated with the specified table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesSchemaBundlesList' smart constructor.
data BigtableAdminProjectsInstancesTablesSchemaBundlesList = BigtableAdminProjectsInstancesTablesSchemaBundlesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of schema bundles to return. If the value is positive, the server may return at most this value. If unspecified, the server will return the maximum allowed page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListSchemaBundles@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListSchemaBundles@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent, which owns this collection of schema bundles. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. The resource/view to be applied to the returned SchemaBundles\' fields. Defaults to NAME/ONLY.
    , view :: (Core.Maybe ProjectsInstancesTablesSchemaBundlesListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesSchemaBundlesList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesSchemaBundlesList 
    :: 
                                                         Core.Text
       -- ^  Required. The parent, which owns this collection of schema bundles. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'parent'.
    -> BigtableAdminProjectsInstancesTablesSchemaBundlesList
newBigtableAdminProjectsInstancesTablesSchemaBundlesList parent
  = BigtableAdminProjectsInstancesTablesSchemaBundlesList{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing,
                                                          pageSize = Core.Nothing,
                                                          pageToken = Core.Nothing, parent = parent,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing,
                                                          view = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesSchemaBundlesList
         where
        type Rs BigtableAdminProjectsInstancesTablesSchemaBundlesList =
             ListSchemaBundlesResponse
        type Scopes BigtableAdminProjectsInstancesTablesSchemaBundlesList =
             '[Bigtable'Admin, Bigtable'Admin'Table, CloudBigtable'Admin,
               CloudBigtable'Admin'Table, CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesSchemaBundlesList{..}
          = go parent xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesSchemaBundlesListResource)
                      Core.mempty

