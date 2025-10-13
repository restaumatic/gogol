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
-- Module      : Gogol.SQLAdmin.Sql.Instances.ExecuteSql
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Execute SQL statements.
--
-- /See:/ <https://cloud.google.com/sql/docs Cloud SQL Admin API Reference> for @sql.instances.executeSql@.
module Gogol.SQLAdmin.Sql.Instances.ExecuteSql
    (
    -- * Resource
      SqlInstancesExecuteSqlResource

    -- ** Constructing a Request
    , SqlInstancesExecuteSql (..)
    , newSqlInstancesExecuteSql
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.executeSql@ method which the
-- 'SqlInstancesExecuteSql' request conforms to.
type SqlInstancesExecuteSqlResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "executeSql" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] ExecuteSqlPayload Core.:>
                               Core.Post '[Core.JSON] SqlInstancesExecuteSqlResponse

-- | Execute SQL statements.
--
-- /See:/ 'newSqlInstancesExecuteSql' smart constructor.
data SqlInstancesExecuteSql = SqlInstancesExecuteSql
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Database instance ID. This does not include the project ID.
    , instance' :: Core.Text
      -- | Multipart request metadata.
    , payload :: ExecuteSqlPayload
      -- | Required. Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesExecuteSql' with the minimum fields required to make a request.
newSqlInstancesExecuteSql 
    :: 
                          Core.Text
       -- ^  Required. Database instance ID. This does not include the project ID. See 'instance''.
    -> ExecuteSqlPayload
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Project ID of the project that contains the instance. See 'project'.
    -> SqlInstancesExecuteSql
newSqlInstancesExecuteSql instance' payload project
  = SqlInstancesExecuteSql{xgafv = Core.Nothing,
                           accessToken = Core.Nothing, callback = Core.Nothing,
                           instance' = instance', payload = payload, project = project,
                           uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SqlInstancesExecuteSql where
        type Rs SqlInstancesExecuteSql = SqlInstancesExecuteSqlResponse
        type Scopes SqlInstancesExecuteSql =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlInstancesExecuteSql{..}
          = go project instance' xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SqlInstancesExecuteSqlResource)
                      Core.mempty

