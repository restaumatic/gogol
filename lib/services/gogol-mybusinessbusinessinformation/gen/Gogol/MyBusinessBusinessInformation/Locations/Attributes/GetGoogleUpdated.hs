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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.Attributes.GetGoogleUpdated
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Google-updated version of the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.attributes.getGoogleUpdated@.
module Gogol.MyBusinessBusinessInformation.Locations.Attributes.GetGoogleUpdated
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdatedResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated (..)
    , newMyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.attributes.getGoogleUpdated@ method which the
-- 'MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated' request conforms to.
type MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdatedResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "getGoogleUpdated" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Attributes

-- | Gets the Google-updated version of the specified location.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated' smart constructor.
data MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated = MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Google identifier for this location in the form of @locations\/{location_id}\/attributes@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated 
    :: 
                                                                    Core.Text
       -- ^  Required. Google identifier for this location in the form of @locations\/{location_id}\/attributes@. See 'name'.
    -> MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
newMyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
  name
  = MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated{xgafv
                                                                       = Core.Nothing,
                                                                     accessToken = Core.Nothing,
                                                                     callback = Core.Nothing,
                                                                     name = name,
                                                                     uploadType = Core.Nothing,
                                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
         where
        type Rs
               MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
             = Attributes
        type Scopes
               MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated
             = '[]
        requestClient
          MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdatedResource)
                      Core.mempty

