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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Operations.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.operations.delete@.
module Gogol.CloudScheduler.Projects.Locations.Operations.Delete
    (
    -- * Resource
      CloudSchedulerProjectsLocationsOperationsDeleteResource

    -- ** Constructing a Request
    , CloudSchedulerProjectsLocationsOperationsDelete (..)
    , newCloudSchedulerProjectsLocationsOperationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.projects.locations.operations.delete@ method which the
-- 'CloudSchedulerProjectsLocationsOperationsDelete' request conforms to.
type CloudSchedulerProjectsLocationsOperationsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsOperationsDelete' smart constructor.
data CloudSchedulerProjectsLocationsOperationsDelete = CloudSchedulerProjectsLocationsOperationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation resource to be deleted.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsOperationsDelete' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsOperationsDelete 
    :: 
                                                   Core.Text
       -- ^  The name of the operation resource to be deleted. See 'name'.
    -> CloudSchedulerProjectsLocationsOperationsDelete
newCloudSchedulerProjectsLocationsOperationsDelete name
  = CloudSchedulerProjectsLocationsOperationsDelete{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing, name = name,
                                                    uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudSchedulerProjectsLocationsOperationsDelete
         where
        type Rs CloudSchedulerProjectsLocationsOperationsDelete = Empty
        type Scopes CloudSchedulerProjectsLocationsOperationsDelete =
             '[CloudPlatform'FullControl]
        requestClient CloudSchedulerProjectsLocationsOperationsDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudSchedulerProjectsLocationsOperationsDeleteResource)
                      Core.mempty

