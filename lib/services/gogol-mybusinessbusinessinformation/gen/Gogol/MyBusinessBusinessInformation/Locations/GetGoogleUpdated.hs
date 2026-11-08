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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.GetGoogleUpdated
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Google-updated version of the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.getGoogleUpdated@.
module Gogol.MyBusinessBusinessInformation.Locations.GetGoogleUpdated
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsGetGoogleUpdatedResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsGetGoogleUpdated (..)
    , newMyBusinessBusinessInformationLocationsGetGoogleUpdated
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.getGoogleUpdated@ method which the
-- 'MyBusinessBusinessInformationLocationsGetGoogleUpdated' request conforms to.
type MyBusinessBusinessInformationLocationsGetGoogleUpdatedResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "getGoogleUpdated" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "readMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] GoogleUpdatedLocation

-- | Gets the Google-updated version of the specified location.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsGetGoogleUpdated' smart constructor.
data MyBusinessBusinessInformationLocationsGetGoogleUpdated = MyBusinessBusinessInformationLocationsGetGoogleUpdated
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the location to fetch.
    , name :: Core.Text
      -- | Required. Read mask to specify what fields will be returned in the response.
    , readMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationLocationsGetGoogleUpdated' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsGetGoogleUpdated 
    :: 
                                                          Core.Text
       -- ^  Required. The name of the location to fetch. See 'name'.
    -> MyBusinessBusinessInformationLocationsGetGoogleUpdated
newMyBusinessBusinessInformationLocationsGetGoogleUpdated name
  = MyBusinessBusinessInformationLocationsGetGoogleUpdated{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing, name = name,
                                                           readMask = Core.Nothing,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsGetGoogleUpdated
         where
        type Rs MyBusinessBusinessInformationLocationsGetGoogleUpdated =
             GoogleUpdatedLocation
        type Scopes MyBusinessBusinessInformationLocationsGetGoogleUpdated
             = '[]
        requestClient
          MyBusinessBusinessInformationLocationsGetGoogleUpdated{..}
          = go name xgafv accessToken callback readMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationLocationsGetGoogleUpdatedResource)
                      Core.mempty

