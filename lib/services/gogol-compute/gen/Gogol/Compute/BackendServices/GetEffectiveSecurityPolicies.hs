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
-- Module      : Gogol.Compute.BackendServices.GetEffectiveSecurityPolicies
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns effective security policies applied to this backend service.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.backendServices.getEffectiveSecurityPolicies@.
module Gogol.Compute.BackendServices.GetEffectiveSecurityPolicies
    (
    -- * Resource
      ComputeBackendServicesGetEffectiveSecurityPoliciesResource

    -- ** Constructing a Request
    , ComputeBackendServicesGetEffectiveSecurityPolicies (..)
    , newComputeBackendServicesGetEffectiveSecurityPolicies
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.backendServices.getEffectiveSecurityPolicies@ method which the
-- 'ComputeBackendServicesGetEffectiveSecurityPolicies' request conforms to.
type ComputeBackendServicesGetEffectiveSecurityPoliciesResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "backendServices" Core.:>
                 Core.Capture "backendService" Core.Text Core.:>
                   "getEffectiveSecurityPolicies" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:> Core.Get '[Core.JSON] ()

-- | Returns effective security policies applied to this backend service.
--
-- /See:/ 'newComputeBackendServicesGetEffectiveSecurityPolicies' smart constructor.
data ComputeBackendServicesGetEffectiveSecurityPolicies = ComputeBackendServicesGetEffectiveSecurityPolicies
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Name of the Backend Service for this request.
    , backendService :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeBackendServicesGetEffectiveSecurityPolicies' with the minimum fields required to make a request.
newComputeBackendServicesGetEffectiveSecurityPolicies 
    :: 
                                                      Core.Text
       -- ^  Name of the Backend Service for this request. See 'backendService'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeBackendServicesGetEffectiveSecurityPolicies
newComputeBackendServicesGetEffectiveSecurityPolicies
  backendService project
  = ComputeBackendServicesGetEffectiveSecurityPolicies{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       backendService = backendService,
                                                       callback = Core.Nothing, project = project,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeBackendServicesGetEffectiveSecurityPolicies
         where
        type Rs ComputeBackendServicesGetEffectiveSecurityPolicies = ()
        type Scopes ComputeBackendServicesGetEffectiveSecurityPolicies =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient
          ComputeBackendServicesGetEffectiveSecurityPolicies{..}
          = go project backendService xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeBackendServicesGetEffectiveSecurityPoliciesResource)
                      Core.mempty

