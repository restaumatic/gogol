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
-- Module      : Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the place action links for the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.locations.placeActionLinks.list@.
module Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.List
    (
    -- * Resource
      MyBusinessPlaceActionsLocationsPlaceActionLinksListResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsLocationsPlaceActionLinksList (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.locations.placeActionLinks.list@ method which the
-- 'MyBusinessPlaceActionsLocationsPlaceActionLinksList' request conforms to.
type MyBusinessPlaceActionsLocationsPlaceActionLinksListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "placeActionLinks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListPlaceActionLinksResponse

-- | Lists the place action links for the specified location.
--
-- /See:/ 'newMyBusinessPlaceActionsLocationsPlaceActionLinksList' smart constructor.
data MyBusinessPlaceActionsLocationsPlaceActionLinksList = MyBusinessPlaceActionsLocationsPlaceActionLinksList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A filter constraining the place action links to return. The response includes entries that match the filter. We support only the following filter: 1. place/action/type=XYZ where XYZ is a valid PlaceActionType.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. How many place action links to return per page. Default of 10. The minimum is 1.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If specified, returns the next page of place action links.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the location whose place action links will be listed. @locations\/{location_id}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsLocationsPlaceActionLinksList' with the minimum fields required to make a request.
newMyBusinessPlaceActionsLocationsPlaceActionLinksList 
    :: 
                                                       Core.Text
       -- ^  Required. The name of the location whose place action links will be listed. @locations\/{location_id}@. See 'parent'.
    -> MyBusinessPlaceActionsLocationsPlaceActionLinksList
newMyBusinessPlaceActionsLocationsPlaceActionLinksList parent
  = MyBusinessPlaceActionsLocationsPlaceActionLinksList{xgafv =
                                                          Core.Nothing,
                                                        accessToken = Core.Nothing,
                                                        callback = Core.Nothing,
                                                        filter = Core.Nothing,
                                                        pageSize = Core.Nothing,
                                                        pageToken = Core.Nothing, parent = parent,
                                                        uploadType = Core.Nothing,
                                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsLocationsPlaceActionLinksList
         where
        type Rs MyBusinessPlaceActionsLocationsPlaceActionLinksList =
             ListPlaceActionLinksResponse
        type Scopes MyBusinessPlaceActionsLocationsPlaceActionLinksList =
             '[]
        requestClient
          MyBusinessPlaceActionsLocationsPlaceActionLinksList{..}
          = go parent xgafv accessToken callback filter pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsLocationsPlaceActionLinksListResource)
                      Core.mempty

