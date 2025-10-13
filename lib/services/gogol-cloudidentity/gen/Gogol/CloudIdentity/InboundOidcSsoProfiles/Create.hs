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
-- Module      : Gogol.CloudIdentity.InboundOidcSsoProfiles.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InboundOidcSsoProfile for a customer. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundOidcSsoProfiles.create@.
module Gogol.CloudIdentity.InboundOidcSsoProfiles.Create
    (
    -- * Resource
      CloudIdentityInboundOidcSsoProfilesCreateResource

    -- ** Constructing a Request
    , CloudIdentityInboundOidcSsoProfilesCreate (..)
    , newCloudIdentityInboundOidcSsoProfilesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.inboundOidcSsoProfiles.create@ method which the
-- 'CloudIdentityInboundOidcSsoProfilesCreate' request conforms to.
type CloudIdentityInboundOidcSsoProfilesCreateResource =
     "v1" Core.:>
       "inboundOidcSsoProfiles" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] InboundOidcSsoProfile Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Creates an InboundOidcSsoProfile for a customer. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ 'newCloudIdentityInboundOidcSsoProfilesCreate' smart constructor.
data CloudIdentityInboundOidcSsoProfilesCreate = CloudIdentityInboundOidcSsoProfilesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: InboundOidcSsoProfile
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundOidcSsoProfilesCreate' with the minimum fields required to make a request.
newCloudIdentityInboundOidcSsoProfilesCreate 
    :: 
                                             InboundOidcSsoProfile
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityInboundOidcSsoProfilesCreate
newCloudIdentityInboundOidcSsoProfilesCreate payload
  = CloudIdentityInboundOidcSsoProfilesCreate{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              payload = payload, uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           CloudIdentityInboundOidcSsoProfilesCreate
         where
        type Rs CloudIdentityInboundOidcSsoProfilesCreate = Operation
        type Scopes CloudIdentityInboundOidcSsoProfilesCreate =
             '[CloudIdentity'Inboundsso, CloudPlatform'FullControl]
        requestClient CloudIdentityInboundOidcSsoProfilesCreate{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityInboundOidcSsoProfilesCreateResource)
                      Core.mempty

