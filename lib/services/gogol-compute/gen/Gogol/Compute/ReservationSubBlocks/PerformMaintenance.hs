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
-- Module      : Gogol.Compute.ReservationSubBlocks.PerformMaintenance
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows customers to perform maintenance on a reservation subBlock
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.reservationSubBlocks.performMaintenance@.
module Gogol.Compute.ReservationSubBlocks.PerformMaintenance
    (
    -- * Resource
      ComputeReservationSubBlocksPerformMaintenanceResource

    -- ** Constructing a Request
    , ComputeReservationSubBlocksPerformMaintenance (..)
    , newComputeReservationSubBlocksPerformMaintenance
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.reservationSubBlocks.performMaintenance@ method which the
-- 'ComputeReservationSubBlocksPerformMaintenance' request conforms to.
type ComputeReservationSubBlocksPerformMaintenanceResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 Core.Capture "parentName" Core.Text Core.:>
                   "reservationSubBlocks" Core.:>
                     Core.Capture "reservationSubBlock" Core.Text Core.:>
                       "performMaintenance" Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "requestId" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Post '[Core.JSON] Operation

-- | Allows customers to perform maintenance on a reservation subBlock
--
-- /See:/ 'newComputeReservationSubBlocksPerformMaintenance' smart constructor.
data ComputeReservationSubBlocksPerformMaintenance = ComputeReservationSubBlocksPerformMaintenance
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the parent reservation and parent block. In the format of reservations\/{reservation/name}\/reservationBlocks\/{reservation/block_name}
    , parentName :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.
      -- 
      -- For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.
      -- 
      -- The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | The name of the reservation subBlock. Name should conform to RFC1035 or be a resource ID.
    , reservationSubBlock :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone for this request. Zone name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeReservationSubBlocksPerformMaintenance' with the minimum fields required to make a request.
newComputeReservationSubBlocksPerformMaintenance 
    :: 
                                                 Core.Text
       -- ^  The name of the parent reservation and parent block. In the format of reservations\/{reservation/name}\/reservationBlocks\/{reservation/block_name} See 'parentName'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the reservation subBlock. Name should conform to RFC1035 or be a resource ID. See 'reservationSubBlock'.
    -> Core.Text
       -- ^  Name of the zone for this request. Zone name should conform to RFC1035. See 'zone'.
    -> ComputeReservationSubBlocksPerformMaintenance
newComputeReservationSubBlocksPerformMaintenance parentName project
  reservationSubBlock zone
  = ComputeReservationSubBlocksPerformMaintenance{xgafv =
                                                    Core.Nothing,
                                                  accessToken = Core.Nothing,
                                                  callback = Core.Nothing, parentName = parentName,
                                                  project = project, requestId = Core.Nothing,
                                                  reservationSubBlock = reservationSubBlock,
                                                  uploadType = Core.Nothing,
                                                  uploadProtocol = Core.Nothing, zone = zone}
instance Core.GoogleRequest
           ComputeReservationSubBlocksPerformMaintenance
         where
        type Rs ComputeReservationSubBlocksPerformMaintenance = Operation
        type Scopes ComputeReservationSubBlocksPerformMaintenance =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeReservationSubBlocksPerformMaintenance{..}
          = go project zone parentName reservationSubBlock xgafv accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeReservationSubBlocksPerformMaintenanceResource)
                      Core.mempty

