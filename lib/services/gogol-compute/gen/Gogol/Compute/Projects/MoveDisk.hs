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
-- Module      : Gogol.Compute.Projects.MoveDisk
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starting September 29, 2025, you can\'t use the moveDisk API on new projects. To move a disk to a different region or zone, follow the steps in <https://%7B$universe.dns_names.final_documentation_domain%7D/compute/docs/disks/migrate-to-hyperdisk#migrate-to-hd Change the location of a disk>.
-- 
-- Projects that already use the moveDisk API can continue usage until September 29, 2026.
-- 
-- Starting November 1, 2025, API responses will include a warning message in the response body about the upcoming deprecation. You can skip the message to continue using the service without interruption.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.projects.moveDisk@.
module Gogol.Compute.Projects.MoveDisk
    (
    -- * Resource
      ComputeProjectsMoveDiskResource

    -- ** Constructing a Request
    , ComputeProjectsMoveDisk (..)
    , newComputeProjectsMoveDisk
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.projects.moveDisk@ method which the
-- 'ComputeProjectsMoveDisk' request conforms to.
type ComputeProjectsMoveDiskResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "moveDisk" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "requestId" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] DiskMoveRequest Core.:>
                               Core.Post '[Core.JSON] Operation

-- | Starting September 29, 2025, you can\'t use the moveDisk API on new projects. To move a disk to a different region or zone, follow the steps in <https://%7B$universe.dns_names.final_documentation_domain%7D/compute/docs/disks/migrate-to-hyperdisk#migrate-to-hd Change the location of a disk>.
-- 
-- Projects that already use the moveDisk API can continue usage until September 29, 2026.
-- 
-- Starting November 1, 2025, API responses will include a warning message in the response body about the upcoming deprecation. You can skip the message to continue using the service without interruption.
--
-- /See:/ 'newComputeProjectsMoveDisk' smart constructor.
data ComputeProjectsMoveDisk = ComputeProjectsMoveDisk
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: DiskMoveRequest
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

-- | Creates a value of 'ComputeProjectsMoveDisk' with the minimum fields required to make a request.
newComputeProjectsMoveDisk 
    :: 
                           DiskMoveRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeProjectsMoveDisk
newComputeProjectsMoveDisk payload project
  = ComputeProjectsMoveDisk{xgafv = Core.Nothing,
                            accessToken = Core.Nothing, callback = Core.Nothing,
                            payload = payload, project = project, requestId = Core.Nothing,
                            uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeProjectsMoveDisk where
        type Rs ComputeProjectsMoveDisk = Operation
        type Scopes ComputeProjectsMoveDisk =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeProjectsMoveDisk{..}
          = go project xgafv accessToken callback requestId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ComputeProjectsMoveDiskResource)
                      Core.mempty

