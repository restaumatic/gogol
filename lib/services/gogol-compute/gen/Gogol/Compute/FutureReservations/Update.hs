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
-- Module      : Gogol.Compute.FutureReservations.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified future reservation.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.futureReservations.update@.
module Gogol.Compute.FutureReservations.Update
    (
    -- * Resource
      ComputeFutureReservationsUpdateResource

    -- ** Constructing a Request
    , ComputeFutureReservationsUpdate (..)
    , newComputeFutureReservationsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.futureReservations.update@ method which the
-- 'ComputeFutureReservationsUpdate' request conforms to.
type ComputeFutureReservationsUpdateResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "futureReservations" Core.:>
                   Core.Capture "futureReservation" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "updateMask" Core.FieldMask Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] FutureReservation Core.:>
                                       Core.Patch '[Core.JSON] Operation

-- | Updates the specified future reservation.
--
-- /See:/ 'newComputeFutureReservationsUpdate' smart constructor.
data ComputeFutureReservationsUpdate = ComputeFutureReservationsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the reservation to update. Name should conform to RFC1035.
    , futureReservation :: Core.Text
      -- | Multipart request metadata.
    , payload :: FutureReservation
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.
      -- 
      -- For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.
      -- 
      -- The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | update_mask indicates fields to be updated as part of this request.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone for this request. Name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFutureReservationsUpdate' with the minimum fields required to make a request.
newComputeFutureReservationsUpdate 
    :: 
                                   Core.Text
       -- ^  Name of the reservation to update. Name should conform to RFC1035. See 'futureReservation'.
    -> FutureReservation
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the zone for this request. Name should conform to RFC1035. See 'zone'.
    -> ComputeFutureReservationsUpdate
newComputeFutureReservationsUpdate futureReservation payload
  project zone
  = ComputeFutureReservationsUpdate{xgafv = Core.Nothing,
                                    accessToken = Core.Nothing, callback = Core.Nothing,
                                    futureReservation = futureReservation, payload = payload,
                                    project = project, requestId = Core.Nothing,
                                    updateMask = Core.Nothing, uploadType = Core.Nothing,
                                    uploadProtocol = Core.Nothing, zone = zone}
instance Core.GoogleRequest ComputeFutureReservationsUpdate where
        type Rs ComputeFutureReservationsUpdate = Operation
        type Scopes ComputeFutureReservationsUpdate =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeFutureReservationsUpdate{..}
          = go project zone futureReservation xgafv accessToken callback
              requestId
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeFutureReservationsUpdateResource)
                      Core.mempty

