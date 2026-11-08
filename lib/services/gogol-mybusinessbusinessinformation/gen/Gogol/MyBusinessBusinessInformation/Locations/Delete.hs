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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a location. If this location cannot be deleted using the API and it is marked so in the @google.mybusiness.businessinformation.v1.LocationState@, use the <https://business.google.com/manage/ Google Business Profile> website.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.delete@.
module Gogol.MyBusinessBusinessInformation.Locations.Delete
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsDeleteResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsDelete (..)
    , newMyBusinessBusinessInformationLocationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.delete@ method which the
-- 'MyBusinessBusinessInformationLocationsDelete' request conforms to.
type MyBusinessBusinessInformationLocationsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a location. If this location cannot be deleted using the API and it is marked so in the @google.mybusiness.businessinformation.v1.LocationState@, use the <https://business.google.com/manage/ Google Business Profile> website.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsDelete' smart constructor.
data MyBusinessBusinessInformationLocationsDelete = MyBusinessBusinessInformationLocationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the location to delete.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationLocationsDelete' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsDelete 
    :: 
                                                Core.Text
       -- ^  Required. The name of the location to delete. See 'name'.
    -> MyBusinessBusinessInformationLocationsDelete
newMyBusinessBusinessInformationLocationsDelete name
  = MyBusinessBusinessInformationLocationsDelete{xgafv =
                                                   Core.Nothing,
                                                 accessToken = Core.Nothing,
                                                 callback = Core.Nothing, name = name,
                                                 uploadType = Core.Nothing,
                                                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsDelete
         where
        type Rs MyBusinessBusinessInformationLocationsDelete = Empty
        type Scopes MyBusinessBusinessInformationLocationsDelete = '[]
        requestClient MyBusinessBusinessInformationLocationsDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationLocationsDeleteResource)
                      Core.mempty

