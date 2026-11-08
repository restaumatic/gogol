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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Decapsulate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decapsulates data that was encapsulated with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose KEY_ENCAPSULATION.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.decapsulate@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Decapsulate
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulateResource

    -- ** Constructing a Request
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate (..)
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.decapsulate@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulateResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "decapsulate" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DecapsulateRequest Core.:>
                       Core.Post '[Core.JSON] DecapsulateResponse

-- | Decapsulates data that was encapsulated with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose KEY_ENCAPSULATION.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the CryptoKeyVersion to use for decapsulation.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DecapsulateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate 
    :: 
                                                                           Core.Text
       -- ^  Required. The resource name of the CryptoKeyVersion to use for decapsulation. See 'name'.
    -> DecapsulateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
  name payload
  = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate{xgafv
                                                                              = Core.Nothing,
                                                                            accessToken =
                                                                              Core.Nothing,
                                                                            callback = Core.Nothing,
                                                                            name = name,
                                                                            payload = payload,
                                                                            uploadType =
                                                                              Core.Nothing,
                                                                            uploadProtocol =
                                                                              Core.Nothing}
instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
             = DecapsulateResponse
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulate{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDecapsulateResource)
                      Core.mempty

