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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.domainMappings.patch@.
module Gogol.AppEngine.Projects.Locations.Applications.DomainMappings.Patch
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsDomainMappingsPatchResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsDomainMappingsPatch (..)
    , newAppEngineProjectsLocationsApplicationsDomainMappingsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.domainMappings.patch@ method which the
-- 'AppEngineProjectsLocationsApplicationsDomainMappingsPatch' request conforms to.
type AppEngineProjectsLocationsApplicationsDomainMappingsPatchResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "domainMappings" Core.:>
                     Core.Capture "domainMappingsId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "updateMask" Core.FieldMask Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] DomainMapping Core.:>
                                       Core.Patch '[Core.JSON] Operation

-- | Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsDomainMappingsPatch' smart constructor.
data AppEngineProjectsLocationsApplicationsDomainMappingsPatch = AppEngineProjectsLocationsApplicationsDomainMappingsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , applicationsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , domainMappingsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Multipart request metadata.
    , payload :: DomainMapping
      -- | Part of @name@. Required. Name of the resource to update. Example: apps\/myapp\/domainMappings\/example.com.
    , projectsId :: Core.Text
      -- | Required. Standard field mask for the set of fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsDomainMappingsPatch' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsDomainMappingsPatch 
    :: 
                                                             Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'domainMappingsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> DomainMapping
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Part of @name@. Required. Name of the resource to update. Example: apps\/myapp\/domainMappings\/example.com. See 'projectsId'.
    -> AppEngineProjectsLocationsApplicationsDomainMappingsPatch
newAppEngineProjectsLocationsApplicationsDomainMappingsPatch
  applicationsId domainMappingsId locationsId payload projectsId
  = AppEngineProjectsLocationsApplicationsDomainMappingsPatch{xgafv =
                                                                Core.Nothing,
                                                              accessToken = Core.Nothing,
                                                              applicationsId = applicationsId,
                                                              callback = Core.Nothing,
                                                              domainMappingsId = domainMappingsId,
                                                              locationsId = locationsId,
                                                              payload = payload,
                                                              projectsId = projectsId,
                                                              updateMask = Core.Nothing,
                                                              uploadType = Core.Nothing,
                                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsDomainMappingsPatch
         where
        type Rs AppEngineProjectsLocationsApplicationsDomainMappingsPatch =
             Operation
        type Scopes
               AppEngineProjectsLocationsApplicationsDomainMappingsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsDomainMappingsPatch{..}
          = go projectsId locationsId applicationsId domainMappingsId xgafv
              accessToken
              callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsDomainMappingsPatchResource)
                      Core.mempty

