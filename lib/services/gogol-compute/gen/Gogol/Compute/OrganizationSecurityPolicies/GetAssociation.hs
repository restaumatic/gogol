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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.GetAssociation
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an association with the specified name.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.getAssociation instead if possible.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.getAssociation@.
module Gogol.Compute.OrganizationSecurityPolicies.GetAssociation
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesGetAssociationResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesGetAssociation (..)
    , newComputeOrganizationSecurityPoliciesGetAssociation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.getAssociation@ method which the
-- 'ComputeOrganizationSecurityPoliciesGetAssociation' request conforms to.
type ComputeOrganizationSecurityPoliciesGetAssociationResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 "getAssociation" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "name" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] SecurityPolicyAssociation

-- | Gets an association with the specified name.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.getAssociation instead if possible.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesGetAssociation' smart constructor.
data ComputeOrganizationSecurityPoliciesGetAssociation = ComputeOrganizationSecurityPoliciesGetAssociation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the association to get from the security policy.
    , name :: (Core.Maybe Core.Text)
      -- | Name of the security policy to which the queried rule belongs.
    , securityPolicy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesGetAssociation' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesGetAssociation 
    :: 
                                                     Core.Text
       -- ^  Name of the security policy to which the queried rule belongs. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesGetAssociation
newComputeOrganizationSecurityPoliciesGetAssociation securityPolicy
  = ComputeOrganizationSecurityPoliciesGetAssociation{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing, name = Core.Nothing,
                                                      securityPolicy = securityPolicy,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesGetAssociation
         where
        type Rs ComputeOrganizationSecurityPoliciesGetAssociation =
             SecurityPolicyAssociation
        type Scopes ComputeOrganizationSecurityPoliciesGetAssociation =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient ComputeOrganizationSecurityPoliciesGetAssociation{..}
          = go securityPolicy xgafv accessToken callback name uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeOrganizationSecurityPoliciesGetAssociationResource)
                      Core.mempty

