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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.AddAssociation
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts an association for the specified security policy.
-- 
-- This has billing implications. Projects in the hierarchy with effective hierarchical security policies will be automatically enrolled into Cloud Armor Enterprise if not already enrolled.
-- 
-- Use of this API to modify firewall policies is deprecated. Use firewallPolicies.addAssociation instead if possible.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.addAssociation@.
module Gogol.Compute.OrganizationSecurityPolicies.AddAssociation
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesAddAssociationResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesAddAssociation (..)
    , newComputeOrganizationSecurityPoliciesAddAssociation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.addAssociation@ method which the
-- 'ComputeOrganizationSecurityPoliciesAddAssociation' request conforms to.
type ComputeOrganizationSecurityPoliciesAddAssociationResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               Core.Capture "securityPolicy" Core.Text Core.:>
                 "addAssociation" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "replaceExistingAssociation" Core.Bool Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] SecurityPolicyAssociation Core.:>
                                     Core.Post '[Core.JSON] Operation

-- | Inserts an association for the specified security policy.
-- 
-- This has billing implications. Projects in the hierarchy with effective hierarchical security policies will be automatically enrolled into Cloud Armor Enterprise if not already enrolled.
-- 
-- Use of this API to modify firewall policies is deprecated. Use firewallPolicies.addAssociation instead if possible.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesAddAssociation' smart constructor.
data ComputeOrganizationSecurityPoliciesAddAssociation = ComputeOrganizationSecurityPoliciesAddAssociation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SecurityPolicyAssociation
      -- | Indicates whether or not to replace it if an association of the attachment already exists. This is false by default, in which case an error will be returned if an association already exists.
    , replaceExistingAssociation :: (Core.Maybe Core.Bool)
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

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesAddAssociation' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesAddAssociation 
    :: 
                                                     SecurityPolicyAssociation
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Name of the security policy to update. See 'securityPolicy'.
    -> ComputeOrganizationSecurityPoliciesAddAssociation
newComputeOrganizationSecurityPoliciesAddAssociation payload
  securityPolicy
  = ComputeOrganizationSecurityPoliciesAddAssociation{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing, payload = payload,
                                                      replaceExistingAssociation = Core.Nothing,
                                                      requestId = Core.Nothing,
                                                      securityPolicy = securityPolicy,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesAddAssociation
         where
        type Rs ComputeOrganizationSecurityPoliciesAddAssociation =
             Operation
        type Scopes ComputeOrganizationSecurityPoliciesAddAssociation =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeOrganizationSecurityPoliciesAddAssociation{..}
          = go securityPolicy xgafv accessToken callback
              replaceExistingAssociation
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeOrganizationSecurityPoliciesAddAssociationResource)
                      Core.mempty

