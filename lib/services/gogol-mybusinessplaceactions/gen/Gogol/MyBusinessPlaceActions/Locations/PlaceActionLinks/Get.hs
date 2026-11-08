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
-- Module      : Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified place action link.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.locations.placeActionLinks.get@.
module Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Get
    (
    -- * Resource
      MyBusinessPlaceActionsLocationsPlaceActionLinksGetResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsLocationsPlaceActionLinksGet (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.locations.placeActionLinks.get@ method which the
-- 'MyBusinessPlaceActionsLocationsPlaceActionLinksGet' request conforms to.
type MyBusinessPlaceActionsLocationsPlaceActionLinksGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] PlaceActionLink

-- | Gets the specified place action link.
--
-- /See:/ 'newMyBusinessPlaceActionsLocationsPlaceActionLinksGet' smart constructor.
data MyBusinessPlaceActionsLocationsPlaceActionLinksGet = MyBusinessPlaceActionsLocationsPlaceActionLinksGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the place action link to fetch.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsLocationsPlaceActionLinksGet' with the minimum fields required to make a request.
newMyBusinessPlaceActionsLocationsPlaceActionLinksGet 
    :: 
                                                      Core.Text
       -- ^  Required. The name of the place action link to fetch. See 'name'.
    -> MyBusinessPlaceActionsLocationsPlaceActionLinksGet
newMyBusinessPlaceActionsLocationsPlaceActionLinksGet name
  = MyBusinessPlaceActionsLocationsPlaceActionLinksGet{xgafv =
                                                         Core.Nothing,
                                                       accessToken = Core.Nothing,
                                                       callback = Core.Nothing, name = name,
                                                       uploadType = Core.Nothing,
                                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsLocationsPlaceActionLinksGet
         where
        type Rs MyBusinessPlaceActionsLocationsPlaceActionLinksGet =
             PlaceActionLink
        type Scopes MyBusinessPlaceActionsLocationsPlaceActionLinksGet =
             '[]
        requestClient
          MyBusinessPlaceActionsLocationsPlaceActionLinksGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsLocationsPlaceActionLinksGetResource)
                      Core.mempty

