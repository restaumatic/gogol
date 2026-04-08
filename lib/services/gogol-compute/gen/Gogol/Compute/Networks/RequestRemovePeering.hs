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
-- Module      : Gogol.Compute.Networks.RequestRemovePeering
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to remove a peering from the specified network. Applicable only for PeeringConnection with update_strategy=CONSENSUS.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networks.requestRemovePeering@.
module Gogol.Compute.Networks.RequestRemovePeering
    (
    -- * Resource
      ComputeNetworksRequestRemovePeeringResource

    -- ** Constructing a Request
    , ComputeNetworksRequestRemovePeering (..)
    , newComputeNetworksRequestRemovePeering
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.networks.requestRemovePeering@ method which the
-- 'ComputeNetworksRequestRemovePeering' request conforms to.
type ComputeNetworksRequestRemovePeeringResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "networks" Core.:>
                 Core.Capture "network" Core.Text Core.:>
                   "requestRemovePeering" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] NetworksRequestRemovePeeringRequest
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Requests to remove a peering from the specified network. Applicable only for PeeringConnection with update_strategy=CONSENSUS.
--
-- /See:/ 'newComputeNetworksRequestRemovePeering' smart constructor.
data ComputeNetworksRequestRemovePeering = ComputeNetworksRequestRemovePeering
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the network resource to remove peering from.
    , network :: Core.Text
      -- | Multipart request metadata.
    , payload :: NetworksRequestRemovePeeringRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.
      -- 
      -- For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.
      -- 
      -- The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworksRequestRemovePeering' with the minimum fields required to make a request.
newComputeNetworksRequestRemovePeering 
    :: 
                                       Core.Text
       -- ^  Name of the network resource to remove peering from. See 'network'.
    -> NetworksRequestRemovePeeringRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeNetworksRequestRemovePeering
newComputeNetworksRequestRemovePeering network payload project
  = ComputeNetworksRequestRemovePeering{xgafv = Core.Nothing,
                                        accessToken = Core.Nothing, callback = Core.Nothing,
                                        network = network, payload = payload, project = project,
                                        requestId = Core.Nothing, uploadType = Core.Nothing,
                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeNetworksRequestRemovePeering
         where
        type Rs ComputeNetworksRequestRemovePeering = Operation
        type Scopes ComputeNetworksRequestRemovePeering =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeNetworksRequestRemovePeering{..}
          = go project network xgafv accessToken callback requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeNetworksRequestRemovePeeringResource)
                      Core.mempty

