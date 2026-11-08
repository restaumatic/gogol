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
-- Module      : Gogol.Compute.OrganizationSecurityPolicies.ListAssociations
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists associations of a specified target, i.e., organization or folder.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.listAssociations instead if possible.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.organizationSecurityPolicies.listAssociations@.
module Gogol.Compute.OrganizationSecurityPolicies.ListAssociations
    (
    -- * Resource
      ComputeOrganizationSecurityPoliciesListAssociationsResource

    -- ** Constructing a Request
    , ComputeOrganizationSecurityPoliciesListAssociations (..)
    , newComputeOrganizationSecurityPoliciesListAssociations
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.organizationSecurityPolicies.listAssociations@ method which the
-- 'ComputeOrganizationSecurityPoliciesListAssociations' request conforms to.
type ComputeOrganizationSecurityPoliciesListAssociationsResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "securityPolicies" Core.:>
               "listAssociations" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "targetResource" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 OrganizationSecurityPoliciesListAssociationsResponse

-- | Lists associations of a specified target, i.e., organization or folder.
-- 
-- Use of this API to read firewall policies is deprecated. Use firewallPolicies.listAssociations instead if possible.
--
-- /See:/ 'newComputeOrganizationSecurityPoliciesListAssociations' smart constructor.
data ComputeOrganizationSecurityPoliciesListAssociations = ComputeOrganizationSecurityPoliciesListAssociations
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The target resource to list associations. It is an organization, or a folder.
    , targetResource :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeOrganizationSecurityPoliciesListAssociations' with the minimum fields required to make a request.
newComputeOrganizationSecurityPoliciesListAssociations 
    :: 
                                                       ComputeOrganizationSecurityPoliciesListAssociations
newComputeOrganizationSecurityPoliciesListAssociations
  = ComputeOrganizationSecurityPoliciesListAssociations{xgafv =
                                                          Core.Nothing,
                                                        accessToken = Core.Nothing,
                                                        callback = Core.Nothing,
                                                        targetResource = Core.Nothing,
                                                        uploadType = Core.Nothing,
                                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           ComputeOrganizationSecurityPoliciesListAssociations
         where
        type Rs ComputeOrganizationSecurityPoliciesListAssociations =
             OrganizationSecurityPoliciesListAssociationsResponse
        type Scopes ComputeOrganizationSecurityPoliciesListAssociations =
             '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
        requestClient
          ComputeOrganizationSecurityPoliciesListAssociations{..}
          = go xgafv accessToken callback targetResource uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeOrganizationSecurityPoliciesListAssociationsResource)
                      Core.mempty

