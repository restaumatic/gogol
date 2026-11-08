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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified policy with the data included in the request.
-- 
-- Use of this API to modify firewall policies is deprecated. Use firewallPolicies.patch instead.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.patch@.
module Gogol.Compute.OrganizationSecurityPolicies.Patch
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesPatchResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesPatch (..)
    , newComputeOrganizationSecurityPoliciesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.patch@ method which the
-- 'ComputeOrganizationSecurityPoliciesPatch' request conforms to.
type ComputeOrganizationSecurityPoliciesPatchResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "requestId" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] SecurityPolicy Core.:>
                                 Core.Patch '[Core.JSON] Operation

-- | Patches the specified policy with the data included in the request.
-- 
-- Use of this API to modify firewall policies is deprecated. Use firewallPolicies.patch instead.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesPatch' smart constructor.
data ComputeOrganizationSecurityPoliciesPatch = ComputeOrganizationSecurityPoliciesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SecurityPolicy
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.
      -- 
      -- For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.
      -- 
      -- The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Name of the security policy to update.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesPatch' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesPatch 
    :: 
                                            SecurityPolicy
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Name of the security policy to update. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesPatch
newComputeOrganizationSecurityPoliciesPatch payload securityPolicy
  = ComputeOrganizationSecurityPoliciesPatch{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             payload = payload, requestId = Core.Nothing,
                                             securityPolicy = securityPolicy,
                                             uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesPatch
         where
        type Rs ComputeOrganizationSecurityPoliciesPatch = Operation
        type Scopes ComputeOrganizationSecurityPoliciesPatch =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeOrganizationSecurityPoliciesPatch{..}
          = go securityPolicy xgafv accessToken callback requestId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeOrganizationSecurityPoliciesPatchResource)
                      Core.mempty

