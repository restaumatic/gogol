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
-- Module      : Gogol.Monitoring.Projects.Alerts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing alerts for the metrics scope of the project.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alerts.list@.
module Gogol.Monitoring.Projects.Alerts.List
    (
    -- * Resource
      MonitoringProjectsAlertsListResource

    -- ** Constructing a Request
    , MonitoringProjectsAlertsList (..)
    , newMonitoringProjectsAlertsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.alerts.list@ method which the
-- 'MonitoringProjectsAlertsList' request conforms to.
type MonitoringProjectsAlertsListResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "alerts" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "orderBy" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListAlertsResponse

-- | Lists the existing alerts for the metrics scope of the project.
--
-- /See:/ 'newMonitoringProjectsAlertsList' smart constructor.
data MonitoringProjectsAlertsList = MonitoringProjectsAlertsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. An alert is returned if there is a match on any fields belonging to the alert or its subfields.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. A comma-separated list of fields in Alert to use for sorting. The default sort direction is ascending. To specify descending order for a field, add a desc modifier. The following fields are supported: open/time close/timeFor example, close/time desc, open/time will return the alerts closed most recently, with ties broken in the order of older alerts listed first.If the field is not set, the results are sorted by open_time desc.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return in a single response. If not set to a positive number, at most 50 alerts will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If non-empty, page/token must contain a value returned as the next/page_token in a previous response to request the next set of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the project to list alerts for.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsAlertsList' with the minimum fields required to make a request.
newMonitoringProjectsAlertsList 
    :: 
                                Core.Text
       -- ^  Required. The name of the project to list alerts for. See 'parent'.
    -> MonitoringProjectsAlertsList
newMonitoringProjectsAlertsList parent
  = MonitoringProjectsAlertsList{xgafv = Core.Nothing,
                                 accessToken = Core.Nothing, callback = Core.Nothing,
                                 filter = Core.Nothing, orderBy = Core.Nothing,
                                 pageSize = Core.Nothing, pageToken = Core.Nothing, parent = parent,
                                 uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest MonitoringProjectsAlertsList where
        type Rs MonitoringProjectsAlertsList = ListAlertsResponse
        type Scopes MonitoringProjectsAlertsList =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Read]
        requestClient MonitoringProjectsAlertsList{..}
          = go parent xgafv accessToken callback filter orderBy pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy MonitoringProjectsAlertsListResource)
                      Core.mempty

