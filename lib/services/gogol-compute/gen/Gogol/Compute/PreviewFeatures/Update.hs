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
-- Module      : Gogol.Compute.PreviewFeatures.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the given PreviewFeature. This method is used to enable or disable a PreviewFeature.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.previewFeatures.update@.
module Gogol.Compute.PreviewFeatures.Update
    (
    -- * Resource
      ComputePreviewFeaturesUpdateResource

    -- ** Constructing a Request
    , ComputePreviewFeaturesUpdate (..)
    , newComputePreviewFeaturesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.previewFeatures.update@ method which the
-- 'ComputePreviewFeaturesUpdate' request conforms to.
type ComputePreviewFeaturesUpdateResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "previewFeatures" Core.:>
                 Core.Capture "previewFeature" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] PreviewFeature Core.:>
                                   Core.Patch '[Core.JSON] Operation

-- | Patches the given PreviewFeature. This method is used to enable or disable a PreviewFeature.
--
-- /See:/ 'newComputePreviewFeaturesUpdate' smart constructor.
data ComputePreviewFeaturesUpdate = ComputePreviewFeaturesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: PreviewFeature
      -- | Name of the PreviewFeature for this request.
    , previewFeature :: Core.Text
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

-- | Creates a value of 'ComputePreviewFeaturesUpdate' with the minimum fields required to make a request.
newComputePreviewFeaturesUpdate 
    :: 
                                PreviewFeature
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Name of the PreviewFeature for this request. See 'previewFeature'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputePreviewFeaturesUpdate
newComputePreviewFeaturesUpdate payload previewFeature project
  = ComputePreviewFeaturesUpdate{xgafv = Core.Nothing,
                                 accessToken = Core.Nothing, callback = Core.Nothing,
                                 payload = payload, previewFeature = previewFeature,
                                 project = project, requestId = Core.Nothing,
                                 uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputePreviewFeaturesUpdate where
        type Rs ComputePreviewFeaturesUpdate = Operation
        type Scopes ComputePreviewFeaturesUpdate =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputePreviewFeaturesUpdate{..}
          = go project previewFeature xgafv accessToken callback requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputePreviewFeaturesUpdateResource)
                      Core.mempty

