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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new schema bundle in the specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.schemaBundles.create@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.Create
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesSchemaBundlesCreateResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesSchemaBundlesCreate (..)
    , newBigtableAdminProjectsInstancesTablesSchemaBundlesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.schemaBundles.create@ method which the
-- 'BigtableAdminProjectsInstancesTablesSchemaBundlesCreate' request conforms to.
type BigtableAdminProjectsInstancesTablesSchemaBundlesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "schemaBundles" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "schemaBundleId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] SchemaBundle Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a new schema bundle in the specified table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesSchemaBundlesCreate' smart constructor.
data BigtableAdminProjectsInstancesTablesSchemaBundlesCreate = BigtableAdminProjectsInstancesTablesSchemaBundlesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource where this schema bundle will be created. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: SchemaBundle
      -- | Required. The unique ID to use for the schema bundle, which will become the final component of the schema bundle\'s resource name.
    , schemaBundleId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesSchemaBundlesCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesSchemaBundlesCreate 
    :: 
                                                           Core.Text
       -- ^  Required. The parent resource where this schema bundle will be created. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'parent'.
    -> SchemaBundle
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesTablesSchemaBundlesCreate
newBigtableAdminProjectsInstancesTablesSchemaBundlesCreate parent
  payload
  = BigtableAdminProjectsInstancesTablesSchemaBundlesCreate{xgafv =
                                                              Core.Nothing,
                                                            accessToken = Core.Nothing,
                                                            callback = Core.Nothing,
                                                            parent = parent, payload = payload,
                                                            schemaBundleId = Core.Nothing,
                                                            uploadType = Core.Nothing,
                                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesSchemaBundlesCreate
         where
        type Rs BigtableAdminProjectsInstancesTablesSchemaBundlesCreate =
             Operation
        type Scopes BigtableAdminProjectsInstancesTablesSchemaBundlesCreate
             =
             '[Bigtable'Admin, Bigtable'Admin'Table, CloudBigtable'Admin,
               CloudBigtable'Admin'Table, CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesSchemaBundlesCreate{..}
          = go parent xgafv accessToken callback schemaBundleId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesSchemaBundlesCreateResource)
                      Core.mempty

