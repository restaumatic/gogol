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
-- Module      : Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified place action link and returns it.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference> for @mybusinessplaceactions.locations.placeActionLinks.patch@.
module Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Patch
    (
    -- * Resource
      MyBusinessPlaceActionsLocationsPlaceActionLinksPatchResource

    -- ** Constructing a Request
    , MyBusinessPlaceActionsLocationsPlaceActionLinksPatch (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Types

-- | A resource alias for @mybusinessplaceactions.locations.placeActionLinks.patch@ method which the
-- 'MyBusinessPlaceActionsLocationsPlaceActionLinksPatch' request conforms to.
type MyBusinessPlaceActionsLocationsPlaceActionLinksPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] PlaceActionLink Core.:>
                         Core.Patch '[Core.JSON] PlaceActionLink

-- | Updates the specified place action link and returns it.
--
-- /See:/ 'newMyBusinessPlaceActionsLocationsPlaceActionLinksPatch' smart constructor.
data MyBusinessPlaceActionsLocationsPlaceActionLinksPatch = MyBusinessPlaceActionsLocationsPlaceActionLinksPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The resource name, in the format @locations\/{location_id}\/placeActionLinks\/{place_action_link_id}@. The name field will only be considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for updating and deleting links respectively. However, it will be ignored in CreatePlaceActionLink request, where @place_action_link_id@ will be assigned by the server on successful creation of a new link and returned as part of the response.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: PlaceActionLink
      -- | Required. The specific fields to update. The only editable fields are @uri@, @place_action_type@ and @is_preferred@. If the updated link already exists at the same location with the same @place_action_type@ and @uri@, fails with an @ALREADY_EXISTS@ error.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessPlaceActionsLocationsPlaceActionLinksPatch' with the minimum fields required to make a request.
newMyBusinessPlaceActionsLocationsPlaceActionLinksPatch 
    :: 
                                                        Core.Text
       -- ^  Optional. The resource name, in the format @locations\/{location_id}\/placeActionLinks\/{place_action_link_id}@. The name field will only be considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for updating and deleting links respectively. However, it will be ignored in CreatePlaceActionLink request, where @place_action_link_id@ will be assigned by the server on successful creation of a new link and returned as part of the response. See 'name'.
    -> PlaceActionLink
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessPlaceActionsLocationsPlaceActionLinksPatch
newMyBusinessPlaceActionsLocationsPlaceActionLinksPatch name
  payload
  = MyBusinessPlaceActionsLocationsPlaceActionLinksPatch{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing, name = name,
                                                         payload = payload,
                                                         updateMask = Core.Nothing,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessPlaceActionsLocationsPlaceActionLinksPatch
         where
        type Rs MyBusinessPlaceActionsLocationsPlaceActionLinksPatch =
             PlaceActionLink
        type Scopes MyBusinessPlaceActionsLocationsPlaceActionLinksPatch =
             '[]
        requestClient
          MyBusinessPlaceActionsLocationsPlaceActionLinksPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessPlaceActionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessPlaceActionsLocationsPlaceActionLinksPatchResource)
                      Core.mempty

