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
-- Module      : Gogol.Compute.FutureReservations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified future reservation.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.futureReservations.get@.
module Gogol.Compute.FutureReservations.Get
    (
    -- * Resource
      ComputeFutureReservationsGetResource

    -- ** Constructing a Request
    , ComputeFutureReservationsGet (..)
    , newComputeFutureReservationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.futureReservations.get@ method which the
-- 'ComputeFutureReservationsGet' request conforms to.
type ComputeFutureReservationsGetResource =
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
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] FutureReservation

-- | Retrieves information about the specified future reservation.
--
-- /See:/ 'newComputeFutureReservationsGet' smart constructor.
data ComputeFutureReservationsGet = ComputeFutureReservationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the future reservation to retrieve. Name should conform to RFC1035.
    , futureReservation :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone for this request. Name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFutureReservationsGet' with the minimum fields required to make a request.
newComputeFutureReservationsGet 
    :: 
                                Core.Text
       -- ^  Name of the future reservation to retrieve. Name should conform to RFC1035. See 'futureReservation'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the zone for this request. Name should conform to RFC1035. See 'zone'.
    -> ComputeFutureReservationsGet
newComputeFutureReservationsGet futureReservation project zone
  = ComputeFutureReservationsGet{xgafv = Core.Nothing,
                                 accessToken = Core.Nothing, callback = Core.Nothing,
                                 futureReservation = futureReservation, project = project,
                                 uploadType = Core.Nothing, uploadProtocol = Core.Nothing,
                                 zone = zone}
instance Core.GoogleRequest ComputeFutureReservationsGet where
        type Rs ComputeFutureReservationsGet = FutureReservation
        type Scopes ComputeFutureReservationsGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeFutureReservationsGet{..}
          = go project zone futureReservation xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeFutureReservationsGetResource)
                      Core.mempty

