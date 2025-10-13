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
-- Module      : Gogol.OSLogin.Projects.Locations.SignSshPublicKey
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs an SSH public key for a user to authenticate to a virtual machine on Google Compute Engine.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.projects.locations.signSshPublicKey@.
module Gogol.OSLogin.Projects.Locations.SignSshPublicKey
    (
    -- * Resource
      OSLoginProjectsLocationsSignSshPublicKeyResource

    -- ** Constructing a Request
    , OSLoginProjectsLocationsSignSshPublicKey (..)
    , newOSLoginProjectsLocationsSignSshPublicKey
    ) where

import qualified Gogol.Prelude as Core
import Gogol.OSLogin.Types

-- | A resource alias for @oslogin.projects.locations.signSshPublicKey@ method which the
-- 'OSLoginProjectsLocationsSignSshPublicKey' request conforms to.
type OSLoginProjectsLocationsSignSshPublicKeyResource =
     "v1" Core.:>
       Core.CaptureMode "parent" "signSshPublicKey" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SignSshPublicKeyRequest Core.:>
                       Core.Post '[Core.JSON] SignSshPublicKeyResponse

-- | Signs an SSH public key for a user to authenticate to a virtual machine on Google Compute Engine.
--
-- /See:/ 'newOSLoginProjectsLocationsSignSshPublicKey' smart constructor.
data OSLoginProjectsLocationsSignSshPublicKey = OSLoginProjectsLocationsSignSshPublicKey
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent for the signing request. Format: projects\/{project}\/locations\/{location}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: SignSshPublicKeyRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginProjectsLocationsSignSshPublicKey' with the minimum fields required to make a request.
newOSLoginProjectsLocationsSignSshPublicKey 
    :: 
                                            Core.Text
       -- ^  Required. The parent for the signing request. Format: projects\/{project}\/locations\/{location} See 'parent'.
    -> SignSshPublicKeyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> OSLoginProjectsLocationsSignSshPublicKey
newOSLoginProjectsLocationsSignSshPublicKey parent payload
  = OSLoginProjectsLocationsSignSshPublicKey{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             parent = parent, payload = payload,
                                             uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           OSLoginProjectsLocationsSignSshPublicKey
         where
        type Rs OSLoginProjectsLocationsSignSshPublicKey =
             SignSshPublicKeyResponse
        type Scopes OSLoginProjectsLocationsSignSshPublicKey =
             '[CloudPlatform'FullControl]
        requestClient OSLoginProjectsLocationsSignSshPublicKey{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              oSLoginService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy OSLoginProjectsLocationsSignSshPublicKeyResource)
                      Core.mempty

