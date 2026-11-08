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
-- Module      : Gogol.MyBusinessPlaceActions.PlaceActionTypeMetadata.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of available place action types for a location or country.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.placeActionTypeMetadata.list@.
module Gogol.MyBusinessPlaceActions.PlaceActionTypeMetadata.List
    (
    -- * Resource
      MyBusinessPlaceActionsPlaceActionTypeMetadataListResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsPlaceActionTypeMetadataList (..)
    , newMyBusinessPlaceActionsPlaceActionTypeMetadataList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.placeActionTypeMetadata.list@ method which the
-- 'MyBusinessPlaceActionsPlaceActionTypeMetadataList' request conforms to.
type MyBusinessPlaceActionsPlaceActionTypeMetadataListResource =
     "v1" Core.:>
       "placeActionTypeMetadata" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListPlaceActionTypeMetadataResponse

-- | Returns the list of available place action types for a location or country.
--
-- /See:/ 'newMyBusinessPlaceActionsPlaceActionTypeMetadataList' smart constructor.
data MyBusinessPlaceActionsPlaceActionTypeMetadataList = MyBusinessPlaceActionsPlaceActionTypeMetadataList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A filter constraining the place action types to return metadata for. The response includes entries that match the filter. We support only the following filters: 1. location=XYZ where XYZ is a string indicating the resource name of a location, in the format @locations\/{location_id}@. 2. region_code=XYZ where XYZ is a Unicode CLDR region code to find available action types. If no filter is provided, all place action types are returned.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The IETF BCP-47 code of language to get display names in. If this language is not available, they will be provided in English.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. How many action types to include per page. Default is 10, minimum is 1.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If specified, the next page of place action type metadata is retrieved. The @pageToken@ is returned when a call to @placeActionTypeMetadata.list@ returns more results than can fit into the requested page size.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsPlaceActionTypeMetadataList' with the minimum fields required to make a request.
newMyBusinessPlaceActionsPlaceActionTypeMetadataList 
    :: 
                                                     MyBusinessPlaceActionsPlaceActionTypeMetadataList
newMyBusinessPlaceActionsPlaceActionTypeMetadataList
  = MyBusinessPlaceActionsPlaceActionTypeMetadataList{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing,
                                                      filter = Core.Nothing,
                                                      languageCode = Core.Nothing,
                                                      pageSize = Core.Nothing,
                                                      pageToken = Core.Nothing,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsPlaceActionTypeMetadataList
         where
        type Rs MyBusinessPlaceActionsPlaceActionTypeMetadataList =
             ListPlaceActionTypeMetadataResponse
        type Scopes MyBusinessPlaceActionsPlaceActionTypeMetadataList = '[]
        requestClient MyBusinessPlaceActionsPlaceActionTypeMetadataList{..}
          = go xgafv accessToken callback filter languageCode pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsPlaceActionTypeMetadataListResource)
                      Core.mempty

