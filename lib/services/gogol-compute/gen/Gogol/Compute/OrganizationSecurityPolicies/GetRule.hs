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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.GetRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a rule at the specified priority.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.getRule instead.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.getRule@.
module Gogol.Compute.OrganizationSecurityPolicies.GetRule
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesGetRuleResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesGetRule (..)
    , newComputeOrganizationSecurityPoliciesGetRule
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.getRule@ method which the
-- 'ComputeOrganizationSecurityPoliciesGetRule' request conforms to.
type ComputeOrganizationSecurityPoliciesGetRuleResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 "getRule" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "priority" Core.Int32 Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] SecurityPolicyRule

-- | Gets a rule at the specified priority.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.getRule instead.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesGetRule' smart constructor.
data ComputeOrganizationSecurityPoliciesGetRule = ComputeOrganizationSecurityPoliciesGetRule
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The priority of the rule to get from the security policy.
    , priority :: (Core.Maybe Core.Int32)
      -- | Name of the security policy to which the queried rule belongs.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesGetRule' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesGetRule 
    :: 
                                              Core.Text
       -- ^  Name of the security policy to which the queried rule belongs. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesGetRule
newComputeOrganizationSecurityPoliciesGetRule securityPolicy
  = ComputeOrganizationSecurityPoliciesGetRule{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               priority = Core.Nothing,
                                               securityPolicy = securityPolicy,
                                               uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesGetRule
         where
        type Rs ComputeOrganizationSecurityPoliciesGetRule =
             SecurityPolicyRule
        type Scopes ComputeOrganizationSecurityPoliciesGetRule =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeOrganizationSecurityPoliciesGetRule{..}
          = go securityPolicy xgafv accessToken callback priority uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeOrganizationSecurityPoliciesGetRuleResource)
                      Core.mempty

