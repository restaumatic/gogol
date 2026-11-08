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
-- Module      : Gogol.CloudIdentity.InboundOidcSsoProfiles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InboundOidcSsoProfile objects for a Google enterprise customer.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundOidcSsoProfiles.list@.
module Gogol.CloudIdentity.InboundOidcSsoProfiles.List
    (
    -- * Resource
      CloudIdentityInboundOidcSsoProfilesListResource

    -- ** Constructing a Request
    , CloudIdentityInboundOidcSsoProfilesList (..)
    , newCloudIdentityInboundOidcSsoProfilesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.inboundOidcSsoProfiles.list@ method which the
-- 'CloudIdentityInboundOidcSsoProfilesList' request conforms to.
type CloudIdentityInboundOidcSsoProfilesListResource =
     "v1" Core.:>
       "inboundOidcSsoProfiles" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListInboundOidcSsoProfilesResponse

-- | Lists InboundOidcSsoProfile objects for a Google enterprise customer.
--
-- /See:/ 'newCloudIdentityInboundOidcSsoProfilesList' smart constructor.
data CloudIdentityInboundOidcSsoProfilesList = CloudIdentityInboundOidcSsoProfilesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A <https://github.com/google/cel-spec Common Expression Language> expression to filter the results. The only supported filter is filtering by customer. For example: @customer==\"customers\/C0123abc\"@. Omitting the filter or specifying a filter of @customer==\"customers\/my_customer\"@ will return the profiles for the customer that the caller (authenticated user) belongs to. Specifying a filter of @customer==\"\"@ will return the global shared OIDC profiles.
    , filter :: (Core.Maybe Core.Text)
      -- | The maximum number of InboundOidcSsoProfiles to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100. Requests with page_size greater than that will be silently interpreted as having this maximum value.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListInboundOidcSsoProfiles@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListInboundOidcSsoProfiles@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundOidcSsoProfilesList' with the minimum fields required to make a request.
newCloudIdentityInboundOidcSsoProfilesList 
    :: 
                                           CloudIdentityInboundOidcSsoProfilesList
newCloudIdentityInboundOidcSsoProfilesList
  = CloudIdentityInboundOidcSsoProfilesList{xgafv = Core.Nothing,
                                            accessToken = Core.Nothing, callback = Core.Nothing,
                                            filter = Core.Nothing, pageSize = Core.Nothing,
                                            pageToken = Core.Nothing, uploadType = Core.Nothing,
                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest CloudIdentityInboundOidcSsoProfilesList
         where
        type Rs CloudIdentityInboundOidcSsoProfilesList =
             ListInboundOidcSsoProfilesResponse
        type Scopes CloudIdentityInboundOidcSsoProfilesList =
             '[CloudIdentity'Inboundsso, CloudIdentity'Inboundsso'Readonly,
               CloudPlatform'FullControl]
        requestClient CloudIdentityInboundOidcSsoProfilesList{..}
          = go xgafv accessToken callback filter pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityInboundOidcSsoProfilesListResource)
                      Core.mempty

