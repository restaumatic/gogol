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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.RemoveRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rule at the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.removeRule@.
module Gogol.Compute.OrganizationSecurityPolicies.RemoveRule
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesRemoveRuleResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesRemoveRule (..)
    , newComputeOrganizationSecurityPoliciesRemoveRule
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.removeRule@ method which the
-- 'ComputeOrganizationSecurityPoliciesRemoveRule' request conforms to.
type ComputeOrganizationSecurityPoliciesRemoveRuleResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 "removeRule" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "priority" Core.Int32 Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Operation

-- | Deletes a rule at the specified priority.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesRemoveRule' smart constructor.
data ComputeOrganizationSecurityPoliciesRemoveRule = ComputeOrganizationSecurityPoliciesRemoveRule
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The priority of the rule to remove from the security policy.
    , priority :: (Core.Maybe Core.Int32)
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

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesRemoveRule' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesRemoveRule 
    :: 
                                                 Core.Text
       -- ^  Name of the security policy to update. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesRemoveRule
newComputeOrganizationSecurityPoliciesRemoveRule securityPolicy
  = ComputeOrganizationSecurityPoliciesRemoveRule{xgafv =
                                                    Core.Nothing,
                                                  accessToken = Core.Nothing,
                                                  callback = Core.Nothing, priority = Core.Nothing,
                                                  requestId = Core.Nothing,
                                                  securityPolicy = securityPolicy,
                                                  uploadType = Core.Nothing,
                                                  uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesRemoveRule
         where
        type Rs ComputeOrganizationSecurityPoliciesRemoveRule = Operation
        type Scopes ComputeOrganizationSecurityPoliciesRemoveRule =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeOrganizationSecurityPoliciesRemoveRule{..}
          = go securityPolicy xgafv accessToken callback priority requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeOrganizationSecurityPoliciesRemoveRuleResource)
                      Core.mempty

