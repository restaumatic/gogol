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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.get@.
module Gogol.MyBusinessBusinessInformation.Locations.Get
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsGetResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsGet (..)
    , newMyBusinessBusinessInformationLocationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.get@ method which the
-- 'MyBusinessBusinessInformationLocationsGet' request conforms to.
type MyBusinessBusinessInformationLocationsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "readMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Location

-- | Returns the specified location.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsGet' smart constructor.
data MyBusinessBusinessInformationLocationsGet = MyBusinessBusinessInformationLocationsGet
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

-- | Creates a value of 'MyBusinessBusinessInformationLocationsGet' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsGet 
    :: 
                                             Core.Text
       -- ^  Required. The name of the location to fetch. See 'name'.
    -> MyBusinessBusinessInformationLocationsGet
newMyBusinessBusinessInformationLocationsGet name
  = MyBusinessBusinessInformationLocationsGet{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              name = name, readMask = Core.Nothing,
                                              uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsGet
         where
        type Rs MyBusinessBusinessInformationLocationsGet = Location
        type Scopes MyBusinessBusinessInformationLocationsGet = '[]
        requestClient MyBusinessBusinessInformationLocationsGet{..}
          = go name xgafv accessToken callback readMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationLocationsGetResource)
                      Core.mempty

