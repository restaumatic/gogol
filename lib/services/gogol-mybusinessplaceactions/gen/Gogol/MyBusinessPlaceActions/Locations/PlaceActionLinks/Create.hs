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
-- Module      : Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a place action link associated with the specified location, and returns it. The request is considered duplicate if the @parent@, @place_action_link.uri@ and @place_action_link.place_action_type@ are the same as a previous request.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.locations.placeActionLinks.create@.
module Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Create
    (
    -- * Resource
      MyBusinessPlaceActionsLocationsPlaceActionLinksCreateResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsLocationsPlaceActionLinksCreate (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.locations.placeActionLinks.create@ method which the
-- 'MyBusinessPlaceActionsLocationsPlaceActionLinksCreate' request conforms to.
type MyBusinessPlaceActionsLocationsPlaceActionLinksCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "placeActionLinks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] PlaceActionLink Core.:>
                         Core.Post '[Core.JSON] PlaceActionLink

-- | Creates a place action link associated with the specified location, and returns it. The request is considered duplicate if the @parent@, @place_action_link.uri@ and @place_action_link.place_action_type@ are the same as a previous request.
--
-- /See:/ 'newMyBusinessPlaceActionsLocationsPlaceActionLinksCreate' smart constructor.
data MyBusinessPlaceActionsLocationsPlaceActionLinksCreate = MyBusinessPlaceActionsLocationsPlaceActionLinksCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the location where to create this place action link. @locations\/{location_id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: PlaceActionLink
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsLocationsPlaceActionLinksCreate' with the minimum fields required to make a request.
newMyBusinessPlaceActionsLocationsPlaceActionLinksCreate 
    :: 
                                                         Core.Text
       -- ^  Required. The resource name of the location where to create this place action link. @locations\/{location_id}@. See 'parent'.
    -> PlaceActionLink
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessPlaceActionsLocationsPlaceActionLinksCreate
newMyBusinessPlaceActionsLocationsPlaceActionLinksCreate parent
  payload
  = MyBusinessPlaceActionsLocationsPlaceActionLinksCreate{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, parent = parent,
                                                          payload = payload,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsLocationsPlaceActionLinksCreate
         where
        type Rs MyBusinessPlaceActionsLocationsPlaceActionLinksCreate =
             PlaceActionLink
        type Scopes MyBusinessPlaceActionsLocationsPlaceActionLinksCreate =
             '[]
        requestClient
          MyBusinessPlaceActionsLocationsPlaceActionLinksCreate{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsLocationsPlaceActionLinksCreateResource)
                      Core.mempty

