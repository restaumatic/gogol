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
-- Module      : Gogol.Compute.WireGroups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified wire group resource in the given scope.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.wireGroups.get@.
module Gogol.Compute.WireGroups.Get
    (
    -- * Resource
      ComputeWireGroupsGetResource

    -- ** Constructing a Request
    , ComputeWireGroupsGet (..)
    , newComputeWireGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.wireGroups.get@ method which the
-- 'ComputeWireGroupsGet' request conforms to.
type ComputeWireGroupsGetResource =
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
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] WireGroup

-- | Gets the specified wire group resource in the given scope.
--
-- /See:/ 'newComputeWireGroupsGet' smart constructor.
data ComputeWireGroupsGet = ComputeWireGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)

    , crossSiteNetwork :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the wire group resource to return.
    , wireGroup :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeWireGroupsGet' with the minimum fields required to make a request.
newComputeWireGroupsGet 
    :: 
                        Core.Text
       -- ^  See 'crossSiteNetwork'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the wire group resource to return. See 'wireGroup'.
    -> ComputeWireGroupsGet
newComputeWireGroupsGet crossSiteNetwork project wireGroup
  = ComputeWireGroupsGet{xgafv = Core.Nothing,
                         accessToken = Core.Nothing, callback = Core.Nothing,
                         crossSiteNetwork = crossSiteNetwork, project = project,
                         uploadType = Core.Nothing, uploadProtocol = Core.Nothing,
                         wireGroup = wireGroup}
instance Core.GoogleRequest ComputeWireGroupsGet where
        type Rs ComputeWireGroupsGet = WireGroup
        type Scopes ComputeWireGroupsGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeWireGroupsGet{..}
          = go project crossSiteNetwork wireGroup xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeWireGroupsGetResource)
                      Core.mempty

