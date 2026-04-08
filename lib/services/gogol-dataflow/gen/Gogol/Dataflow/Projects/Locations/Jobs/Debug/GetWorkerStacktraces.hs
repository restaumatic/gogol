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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Debug.GetWorkerStacktraces
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get worker stacktraces from debug capture.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.debug.getWorkerStacktraces@.
module Gogol.Dataflow.Projects.Locations.Jobs.Debug.GetWorkerStacktraces
    (
    -- * Resource
      DataflowProjectsLocationsJobsDebugGetWorkerStacktracesResource

    -- ** Constructing a Request
    , DataflowProjectsLocationsJobsDebugGetWorkerStacktraces (..)
    , newDataflowProjectsLocationsJobsDebugGetWorkerStacktraces
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.locations.jobs.debug.getWorkerStacktraces@ method which the
-- 'DataflowProjectsLocationsJobsDebugGetWorkerStacktraces' request conforms to.
type DataflowProjectsLocationsJobsDebugGetWorkerStacktracesResource
     =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "location" Core.Text Core.:>
               "jobs" Core.:>
                 Core.Capture "jobId" Core.Text Core.:>
                   "debug" Core.:>
                     "getWorkerStacktraces" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] GetWorkerStacktracesRequest Core.:>
                                     Core.Post '[Core.JSON] GetWorkerStacktracesResponse

-- | Get worker stacktraces from debug capture.
--
-- /See:/ 'newDataflowProjectsLocationsJobsDebugGetWorkerStacktraces' smart constructor.
data DataflowProjectsLocationsJobsDebugGetWorkerStacktraces = DataflowProjectsLocationsJobsDebugGetWorkerStacktraces
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The job for which to get stacktraces.
    , jobId :: Core.Text
      -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    , location :: Core.Text
      -- | Multipart request metadata.
    , payload :: GetWorkerStacktracesRequest
      -- | The project id.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsDebugGetWorkerStacktraces' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsDebugGetWorkerStacktraces 
    :: 
                                                          Core.Text
       -- ^  The job for which to get stacktraces. See 'jobId'.
    -> Core.Text
       -- ^  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
    -> GetWorkerStacktracesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The project id. See 'projectId'.
    -> DataflowProjectsLocationsJobsDebugGetWorkerStacktraces
newDataflowProjectsLocationsJobsDebugGetWorkerStacktraces jobId
  location payload projectId
  = DataflowProjectsLocationsJobsDebugGetWorkerStacktraces{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing, jobId = jobId,
                                                           location = location, payload = payload,
                                                           projectId = projectId,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           DataflowProjectsLocationsJobsDebugGetWorkerStacktraces
         where
        type Rs DataflowProjectsLocationsJobsDebugGetWorkerStacktraces =
             GetWorkerStacktracesResponse
        type Scopes DataflowProjectsLocationsJobsDebugGetWorkerStacktraces
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          DataflowProjectsLocationsJobsDebugGetWorkerStacktraces{..}
          = go projectId location jobId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataflowProjectsLocationsJobsDebugGetWorkerStacktracesResource)
                      Core.mempty

