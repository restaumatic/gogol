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
-- Module      : Gogol.Compute.PreviewFeatures.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the given PreviewFeature.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.previewFeatures.get@.
module Gogol.Compute.PreviewFeatures.Get
    (
    -- * Resource
      ComputePreviewFeaturesGetResource

    -- ** Constructing a Request
    , ComputePreviewFeaturesGet (..)
    , newComputePreviewFeaturesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.previewFeatures.get@ method which the
-- 'ComputePreviewFeaturesGet' request conforms to.
type ComputePreviewFeaturesGetResource =
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
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] PreviewFeature

-- | Returns the details of the given PreviewFeature.
--
-- /See:/ 'newComputePreviewFeaturesGet' smart constructor.
data ComputePreviewFeaturesGet = ComputePreviewFeaturesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the PreviewFeature for this request.
    , previewFeature :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePreviewFeaturesGet' with the minimum fields required to make a request.
newComputePreviewFeaturesGet 
    :: 
                             Core.Text
       -- ^  Name of the PreviewFeature for this request. See 'previewFeature'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputePreviewFeaturesGet
newComputePreviewFeaturesGet previewFeature project
  = ComputePreviewFeaturesGet{xgafv = Core.Nothing,
                              accessToken = Core.Nothing, callback = Core.Nothing,
                              previewFeature = previewFeature, project = project,
                              uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputePreviewFeaturesGet where
        type Rs ComputePreviewFeaturesGet = PreviewFeature
        type Scopes ComputePreviewFeaturesGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputePreviewFeaturesGet{..}
          = go project previewFeature xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputePreviewFeaturesGetResource)
                      Core.mempty

