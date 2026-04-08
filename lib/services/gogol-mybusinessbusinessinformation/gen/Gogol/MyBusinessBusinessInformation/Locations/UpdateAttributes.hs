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
-- Module      : Gogol.MyBusinessBusinessInformation.Locations.UpdateAttributes
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update attributes for a given location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.locations.updateAttributes@.
module Gogol.MyBusinessBusinessInformation.Locations.UpdateAttributes
    (
    -- * Resource
      MyBusinessBusinessInformationLocationsUpdateAttributesResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationLocationsUpdateAttributes (..)
    , newMyBusinessBusinessInformationLocationsUpdateAttributes
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.locations.updateAttributes@ method which the
-- 'MyBusinessBusinessInformationLocationsUpdateAttributes' request conforms to.
type MyBusinessBusinessInformationLocationsUpdateAttributesResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "attributeMask" Core.FieldMask Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Attributes Core.:>
                         Core.Patch '[Core.JSON] Attributes

-- | Update attributes for a given location.
--
-- /See:/ 'newMyBusinessBusinessInformationLocationsUpdateAttributes' smart constructor.
data MyBusinessBusinessInformationLocationsUpdateAttributes = MyBusinessBusinessInformationLocationsUpdateAttributes
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. Attribute name of attributes that you\'d like to update. Represented by @attributes\/{attribute}@. Updates: All attributes provided in the attributes field that you would like to update must be set in the @attribute_mask@. Attributes set in the above list but not in the @attribute_mask@ will be ignored. Deletes: If you\'d like to delete certain attributes, they must be specified in the @attribute_mask@ with no matching entry in the attributes list. If you\'d like to delete all attributes set on a location, you should look up all the applicable attributes for the location and then add them to the @attribute_mask@ with an empty attributes field.
    , attributeMask :: (Core.Maybe Core.FieldMask)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Google identifier for this location in the form of @locations\/{location_id}\/attributes@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Attributes
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationLocationsUpdateAttributes' with the minimum fields required to make a request.
newMyBusinessBusinessInformationLocationsUpdateAttributes 
    :: 
                                                          Core.Text
       -- ^  Required. Google identifier for this location in the form of @locations\/{location_id}\/attributes@. See 'name'.
    -> Attributes
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessBusinessInformationLocationsUpdateAttributes
newMyBusinessBusinessInformationLocationsUpdateAttributes name
  payload
  = MyBusinessBusinessInformationLocationsUpdateAttributes{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           attributeMask = Core.Nothing,
                                                           callback = Core.Nothing, name = name,
                                                           payload = payload,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationLocationsUpdateAttributes
         where
        type Rs MyBusinessBusinessInformationLocationsUpdateAttributes =
             Attributes
        type Scopes MyBusinessBusinessInformationLocationsUpdateAttributes
             = '[]
        requestClient
          MyBusinessBusinessInformationLocationsUpdateAttributes{..}
          = go name xgafv accessToken attributeMask callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationLocationsUpdateAttributesResource)
                      Core.mempty

