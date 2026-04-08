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
-- Module      : Gogol.Compute.WireGroups.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified wire group resource with the data included in the request. This method supportsPATCH semantics and usesJSON merge patch format and processing rules.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.wireGroups.patch@.
module Gogol.Compute.WireGroups.Patch
    (
    -- * Resource
      ComputeWireGroupsPatchResource

    -- ** Constructing a Request
    , ComputeWireGroupsPatch (..)
    , newComputeWireGroupsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.wireGroups.patch@ method which the
-- 'ComputeWireGroupsPatch' request conforms to.
type ComputeWireGroupsPatchResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "crossSiteNetworks" Core.:>
                 Core.Capture "crossSiteNetwork" Core.Text Core.:>
                   "wireGroups" Core.:>
                     Core.Capture "wireGroup" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                                     Core.QueryParam "validateOnly" Core.Bool Core.:>
                                       Core.QueryParam "alt" Core.AltJSON Core.:>
                                         Core.ReqBody '[Core.JSON] WireGroup Core.:>
                                           Core.Patch '[Core.JSON] Operation

-- | Updates the specified wire group resource with the data included in the request. This method supportsPATCH semantics and usesJSON merge patch format and processing rules.
--
-- /See:/ 'newComputeWireGroupsPatch' smart constructor.
data ComputeWireGroupsPatch = ComputeWireGroupsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)

    , crossSiteNetwork :: Core.Text
      -- | Multipart request metadata.
    , payload :: WireGroup
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.
      -- 
      -- For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.
      -- 
      -- The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
    , requestId :: (Core.Maybe Core.Text)
      -- | update_mask indicates fields to be updated as part of this request.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | [Input Only] Validate the new configuration, but don\'t update it.
    , validateOnly :: (Core.Maybe Core.Bool)
      -- | Name of the WireGroups resource to patch.
    , wireGroup :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeWireGroupsPatch' with the minimum fields required to make a request.
newComputeWireGroupsPatch 
    :: 
                          Core.Text
       -- ^  See 'crossSiteNetwork'.
    -> WireGroup
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the WireGroups resource to patch. See 'wireGroup'.
    -> ComputeWireGroupsPatch
newComputeWireGroupsPatch crossSiteNetwork payload project
  wireGroup
  = ComputeWireGroupsPatch{xgafv = Core.Nothing,
                           accessToken = Core.Nothing, callback = Core.Nothing,
                           crossSiteNetwork = crossSiteNetwork, payload = payload,
                           project = project, requestId = Core.Nothing,
                           updateMask = Core.Nothing, uploadType = Core.Nothing,
                           uploadProtocol = Core.Nothing, validateOnly = Core.Nothing,
                           wireGroup = wireGroup}
instance Core.GoogleRequest ComputeWireGroupsPatch where
        type Rs ComputeWireGroupsPatch = Operation
        type Scopes ComputeWireGroupsPatch =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeWireGroupsPatch{..}
          = go project crossSiteNetwork wireGroup xgafv accessToken callback
              requestId
              updateMask
              uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeWireGroupsPatchResource)
                      Core.mempty

