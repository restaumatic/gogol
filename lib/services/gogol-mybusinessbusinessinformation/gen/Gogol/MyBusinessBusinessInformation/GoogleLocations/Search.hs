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
-- Module      : Gogol.MyBusinessBusinessInformation.GoogleLocations.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search all of the possible locations that are a match to the specified request.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.googleLocations.search@.
module Gogol.MyBusinessBusinessInformation.GoogleLocations.Search
    (
    -- * Resource
      MyBusinessBusinessInformationGoogleLocationsSearchResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationGoogleLocationsSearch (..)
    , newMyBusinessBusinessInformationGoogleLocationsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.googleLocations.search@ method which the
-- 'MyBusinessBusinessInformationGoogleLocationsSearch' request conforms to.
type MyBusinessBusinessInformationGoogleLocationsSearchResource =
     "v1" Core.:>
       "googleLocations:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SearchGoogleLocationsRequest Core.:>
                       Core.Post '[Core.JSON] SearchGoogleLocationsResponse

-- | Search all of the possible locations that are a match to the specified request.
--
-- /See:/ 'newMyBusinessBusinessInformationGoogleLocationsSearch' smart constructor.
data MyBusinessBusinessInformationGoogleLocationsSearch = MyBusinessBusinessInformationGoogleLocationsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SearchGoogleLocationsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationGoogleLocationsSearch' with the minimum fields required to make a request.
newMyBusinessBusinessInformationGoogleLocationsSearch 
    :: 
                                                      SearchGoogleLocationsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessBusinessInformationGoogleLocationsSearch
newMyBusinessBusinessInformationGoogleLocationsSearch payload
  = MyBusinessBusinessInformationGoogleLocationsSearch{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing, payload = payload,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationGoogleLocationsSearch
         where
        type Rs MyBusinessBusinessInformationGoogleLocationsSearch =
             SearchGoogleLocationsResponse
        type Scopes MyBusinessBusinessInformationGoogleLocationsSearch =
             '[]
        requestClient
          MyBusinessBusinessInformationGoogleLocationsSearch{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationGoogleLocationsSearchResource)
                      Core.mempty

