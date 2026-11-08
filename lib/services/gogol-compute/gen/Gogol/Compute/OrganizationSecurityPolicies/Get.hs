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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the ordered rules present in a single specified policy.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.get instead.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.get@.
module Gogol.Compute.OrganizationSecurityPolicies.Get
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesGetResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesGet (..)
    , newComputeOrganizationSecurityPoliciesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.get@ method which the
-- 'ComputeOrganizationSecurityPoliciesGet' request conforms to.
type ComputeOrganizationSecurityPoliciesGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] SecurityPolicy

-- | List all of the ordered rules present in a single specified policy.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.get instead.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesGet' smart constructor.
data ComputeOrganizationSecurityPoliciesGet = ComputeOrganizationSecurityPoliciesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the security policy to get.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesGet' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesGet 
    :: 
                                          Core.Text
       -- ^  Name of the security policy to get. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesGet
newComputeOrganizationSecurityPoliciesGet securityPolicy
  = ComputeOrganizationSecurityPoliciesGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           securityPolicy = securityPolicy,
                                           uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest ComputeOrganizationSecurityPoliciesGet
         where
        type Rs ComputeOrganizationSecurityPoliciesGet = SecurityPolicy
        type Scopes ComputeOrganizationSecurityPoliciesGet =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeOrganizationSecurityPoliciesGet{..}
          = go securityPolicy xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeOrganizationSecurityPoliciesGetResource)
                      Core.mempty

