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
-- Module      : Gogol.Compute.InstanceGroups.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroups.testIamPermissions@.
module Gogol.Compute.InstanceGroups.TestIamPermissions
    (
    -- * Resource
      ComputeInstanceGroupsTestIamPermissionsResource

    -- ** Constructing a Request
    , ComputeInstanceGroupsTestIamPermissions (..)
    , newComputeInstanceGroupsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instanceGroups.testIamPermissions@ method which the
-- 'ComputeInstanceGroupsTestIamPermissions' request conforms to.
type ComputeInstanceGroupsTestIamPermissionsResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instanceGroups" Core.:>
                   Core.Capture "resource" Core.Text Core.:>
                     "testIamPermissions" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] TestPermissionsRequest Core.:>
                                     Core.Post '[Core.JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'newComputeInstanceGroupsTestIamPermissions' smart constructor.
data ComputeInstanceGroupsTestIamPermissions = ComputeInstanceGroupsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestPermissionsRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name or id of the resource for this request.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone for this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupsTestIamPermissions' with the minimum fields required to make a request.
newComputeInstanceGroupsTestIamPermissions 
    :: 
                                           TestPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name or id of the resource for this request. See 'resource'.
    -> Core.Text
       -- ^  The name of the zone for this request. See 'zone'.
    -> ComputeInstanceGroupsTestIamPermissions
newComputeInstanceGroupsTestIamPermissions payload project resource
  zone
  = ComputeInstanceGroupsTestIamPermissions{xgafv = Core.Nothing,
                                            accessToken = Core.Nothing, callback = Core.Nothing,
                                            payload = payload, project = project,
                                            resource = resource, uploadType = Core.Nothing,
                                            uploadProtocol = Core.Nothing, zone = zone}
instance Core.GoogleRequest ComputeInstanceGroupsTestIamPermissions
         where
        type Rs ComputeInstanceGroupsTestIamPermissions =
             TestPermissionsResponse
        type Scopes ComputeInstanceGroupsTestIamPermissions =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeInstanceGroupsTestIamPermissions{..}
          = go project zone resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeInstanceGroupsTestIamPermissionsResource)
                      Core.mempty

