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
-- Module      : Gogol.SQLAdmin.Sql.Instances.PreCheckMajorVersionUpgrade
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Execute MVU Pre-checks
--
-- /See:/ <https://cloud.google.com/sql/docs Cloud SQL Admin API Reference> for @sql.instances.preCheckMajorVersionUpgrade@.
module Gogol.SQLAdmin.Sql.Instances.PreCheckMajorVersionUpgrade
    (
    -- * Resource
      SqlInstancesPreCheckMajorVersionUpgradeResource

    -- ** Constructing a Request
    , SqlInstancesPreCheckMajorVersionUpgrade (..)
    , newSqlInstancesPreCheckMajorVersionUpgrade
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.preCheckMajorVersionUpgrade@ method which the
-- 'SqlInstancesPreCheckMajorVersionUpgrade' request conforms to.
type SqlInstancesPreCheckMajorVersionUpgradeResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "preCheckMajorVersionUpgrade" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               InstancesPreCheckMajorVersionUpgradeRequest
                               Core.:> Core.Post '[Core.JSON] Operation

-- | Execute MVU Pre-checks
--
-- /See:/ 'newSqlInstancesPreCheckMajorVersionUpgrade' smart constructor.
data SqlInstancesPreCheckMajorVersionUpgrade = SqlInstancesPreCheckMajorVersionUpgrade
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Cloud SQL instance ID. This does not include the project ID.
    , instance' :: Core.Text
      -- | Multipart request metadata.
    , payload :: InstancesPreCheckMajorVersionUpgradeRequest
      -- | Required. Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesPreCheckMajorVersionUpgrade' with the minimum fields required to make a request.
newSqlInstancesPreCheckMajorVersionUpgrade 
    :: 
                                           Core.Text
       -- ^  Required. Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> InstancesPreCheckMajorVersionUpgradeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Project ID of the project that contains the instance. See 'project'.
    -> SqlInstancesPreCheckMajorVersionUpgrade
newSqlInstancesPreCheckMajorVersionUpgrade instance' payload
  project
  = SqlInstancesPreCheckMajorVersionUpgrade{xgafv = Core.Nothing,
                                            accessToken = Core.Nothing, callback = Core.Nothing,
                                            instance' = instance', payload = payload,
                                            project = project, uploadType = Core.Nothing,
                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SqlInstancesPreCheckMajorVersionUpgrade
         where
        type Rs SqlInstancesPreCheckMajorVersionUpgrade = Operation
        type Scopes SqlInstancesPreCheckMajorVersionUpgrade =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlInstancesPreCheckMajorVersionUpgrade{..}
          = go project instance' xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlInstancesPreCheckMajorVersionUpgradeResource)
                      Core.mempty

