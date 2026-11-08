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
-- Module      : Gogol.CloudIdentity.InboundOidcSsoProfiles.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InboundOidcSsoProfile.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundOidcSsoProfiles.get@.
module Gogol.CloudIdentity.InboundOidcSsoProfiles.Get
    (
    -- * Resource
      CloudIdentityInboundOidcSsoProfilesGetResource

    -- ** Constructing a Request
    , CloudIdentityInboundOidcSsoProfilesGet (..)
    , newCloudIdentityInboundOidcSsoProfilesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.inboundOidcSsoProfiles.get@ method which the
-- 'CloudIdentityInboundOidcSsoProfilesGet' request conforms to.
type CloudIdentityInboundOidcSsoProfilesGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] InboundOidcSsoProfile

-- | Gets an InboundOidcSsoProfile.
--
-- /See:/ 'newCloudIdentityInboundOidcSsoProfilesGet' smart constructor.
data CloudIdentityInboundOidcSsoProfilesGet = CloudIdentityInboundOidcSsoProfilesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundOidcSsoProfile to get. Format: @inboundOidcSsoProfiles\/{sso_profile_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundOidcSsoProfilesGet' with the minimum fields required to make a request.
newCloudIdentityInboundOidcSsoProfilesGet 
    :: 
                                          Core.Text
       -- ^  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundOidcSsoProfile to get. Format: @inboundOidcSsoProfiles\/{sso_profile_id}@ See 'name'.
    -> CloudIdentityInboundOidcSsoProfilesGet
newCloudIdentityInboundOidcSsoProfilesGet name
  = CloudIdentityInboundOidcSsoProfilesGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           name = name, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest CloudIdentityInboundOidcSsoProfilesGet
         where
        type Rs CloudIdentityInboundOidcSsoProfilesGet =
             InboundOidcSsoProfile
        type Scopes CloudIdentityInboundOidcSsoProfilesGet =
             '[CloudIdentity'Inboundsso, CloudIdentity'Inboundsso'Readonly,
               CloudPlatform'FullControl]
        requestClient CloudIdentityInboundOidcSsoProfilesGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityInboundOidcSsoProfilesGetResource)
                      Core.mempty

