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
-- Module      : Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a place action link from the specified location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.locations.placeActionLinks.delete@.
module Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Delete
    (
    -- * Resource
      MyBusinessPlaceActionsLocationsPlaceActionLinksDeleteResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsLocationsPlaceActionLinksDelete (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.locations.placeActionLinks.delete@ method which the
-- 'MyBusinessPlaceActionsLocationsPlaceActionLinksDelete' request conforms to.
type MyBusinessPlaceActionsLocationsPlaceActionLinksDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a place action link from the specified location.
--
-- /See:/ 'newMyBusinessPlaceActionsLocationsPlaceActionLinksDelete' smart constructor.
data MyBusinessPlaceActionsLocationsPlaceActionLinksDelete = MyBusinessPlaceActionsLocationsPlaceActionLinksDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the place action link to remove from the location.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsLocationsPlaceActionLinksDelete' with the minimum fields required to make a request.
newMyBusinessPlaceActionsLocationsPlaceActionLinksDelete 
    :: 
                                                         Core.Text
       -- ^  Required. The resource name of the place action link to remove from the location. See 'name'.
    -> MyBusinessPlaceActionsLocationsPlaceActionLinksDelete
newMyBusinessPlaceActionsLocationsPlaceActionLinksDelete name
  = MyBusinessPlaceActionsLocationsPlaceActionLinksDelete{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsLocationsPlaceActionLinksDelete
         where
        type Rs MyBusinessPlaceActionsLocationsPlaceActionLinksDelete =
             Empty
        type Scopes MyBusinessPlaceActionsLocationsPlaceActionLinksDelete =
             '[]
        requestClient
          MyBusinessPlaceActionsLocationsPlaceActionLinksDelete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsLocationsPlaceActionLinksDeleteResource)
                      Core.mempty

