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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a schema bundle in the specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.schemaBundles.patch@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.SchemaBundles.Patch
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesSchemaBundlesPatchResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesSchemaBundlesPatch (..)
    , newBigtableAdminProjectsInstancesTablesSchemaBundlesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.schemaBundles.patch@ method which the
-- 'BigtableAdminProjectsInstancesTablesSchemaBundlesPatch' request conforms to.
type BigtableAdminProjectsInstancesTablesSchemaBundlesPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "ignoreWarnings" Core.Bool Core.:>
                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] SchemaBundle Core.:>
                           Core.Patch '[Core.JSON] Operation

-- | Updates a schema bundle in the specified table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesSchemaBundlesPatch' smart constructor.
data BigtableAdminProjectsInstancesTablesSchemaBundlesPatch = BigtableAdminProjectsInstancesTablesSchemaBundlesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. If set, ignore the safety checks when updating the Schema Bundle. The safety checks are: - The new Schema Bundle is backwards compatible with the existing Schema Bundle.
    , ignoreWarnings :: (Core.Maybe Core.Bool)
      -- | Identifier. The unique name identifying this schema bundle. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/schemaBundles\/{schema_bundle}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SchemaBundle
      -- | Optional. The list of fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesSchemaBundlesPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesSchemaBundlesPatch 
    :: 
                                                          Core.Text
       -- ^  Identifier. The unique name identifying this schema bundle. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/schemaBundles\/{schema_bundle}@ See 'name'.
    -> SchemaBundle
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesTablesSchemaBundlesPatch
newBigtableAdminProjectsInstancesTablesSchemaBundlesPatch name
  payload
  = BigtableAdminProjectsInstancesTablesSchemaBundlesPatch{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing,
                                                           ignoreWarnings = Core.Nothing,
                                                           name = name, payload = payload,
                                                           updateMask = Core.Nothing,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesSchemaBundlesPatch
         where
        type Rs BigtableAdminProjectsInstancesTablesSchemaBundlesPatch =
             Operation
        type Scopes BigtableAdminProjectsInstancesTablesSchemaBundlesPatch
             =
             '[Bigtable'Admin, Bigtable'Admin'Table, CloudBigtable'Admin,
               CloudBigtable'Admin'Table, CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesSchemaBundlesPatch{..}
          = go name xgafv accessToken callback ignoreWarnings updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesSchemaBundlesPatchResource)
                      Core.mempty

