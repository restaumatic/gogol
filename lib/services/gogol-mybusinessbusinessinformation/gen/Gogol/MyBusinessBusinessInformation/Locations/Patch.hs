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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.patch@.
module Gogol.MyBusinessBusinessInformation.Locations.Patch
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsPatchResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsPatch (..)
    , newMyBusinessBusinessInformationLocationsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.patch@ method which the
-- 'MyBusinessBusinessInformationLocationsPatch' request conforms to.
type MyBusinessBusinessInformationLocationsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "validateOnly" Core.Bool Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Location Core.:>
                           Core.Patch '[Core.JSON] Location

-- | Updates the specified location.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsPatch' smart constructor.
data MyBusinessBusinessInformationLocationsPatch = MyBusinessBusinessInformationLocationsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Google identifier for this location in the form: @locations\/{location_id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Location
      -- | Required. The specific fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. If true, the request is validated without actually updating the location. When this field is set, we will only return validation errors if there were any. The response will be empty if no errors were found.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationLocationsPatch' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsPatch 
    :: 
                                               Core.Text
       -- ^  Google identifier for this location in the form: @locations\/{location_id}@. See 'name'.
    -> Location
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessBusinessInformationLocationsPatch
newMyBusinessBusinessInformationLocationsPatch name payload
  = MyBusinessBusinessInformationLocationsPatch{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                name = name, payload = payload,
                                                updateMask = Core.Nothing,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing,
                                                validateOnly = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsPatch
         where
        type Rs MyBusinessBusinessInformationLocationsPatch = Location
        type Scopes MyBusinessBusinessInformationLocationsPatch = '[]
        requestClient MyBusinessBusinessInformationLocationsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationLocationsPatchResource)
                      Core.mempty

