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
-- Module      : Gogol.MyBusinessBusinessInformation.Attributes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of attributes that would be available for a location with the given primary category and country.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.attributes.list@.
module Gogol.MyBusinessBusinessInformation.Attributes.List
    (
    -- * Resource
      MyBusinessBusinessInformationAttributesListResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationAttributesList (..)
    , newMyBusinessBusinessInformationAttributesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.attributes.list@ method which the
-- 'MyBusinessBusinessInformationAttributesList' request conforms to.
type MyBusinessBusinessInformationAttributesListResource =
     "v1" Core.:>
       "attributes" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "categoryName" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "parent" Core.Text Core.:>
                         Core.QueryParam "regionCode" Core.Text Core.:>
                           Core.QueryParam "showAll" Core.Bool Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] ListAttributeMetadataResponse

-- | Returns the list of attributes that would be available for a location with the given primary category and country.
--
-- /See:/ 'newMyBusinessBusinessInformationAttributesList' smart constructor.
data MyBusinessBusinessInformationAttributesList = MyBusinessBusinessInformationAttributesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The primary category stable ID to find available attributes. Must be of the format categories\/{category_id}.
    , categoryName :: (Core.Maybe Core.Text)
      -- | The BCP 47 code of language to get attribute display names in. If this language is not available, they will be provided in English.
    , languageCode :: (Core.Maybe Core.Text)
      -- | How many attributes to include per page. Default is 200, minimum is 1.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | If specified, the next page of attribute metadata is retrieved.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Resource name of the location to look up available attributes. If this field is set, category/name, region/code, language/code and show/all are not required and must not be set.
    , parent :: (Core.Maybe Core.Text)
      -- | The ISO 3166-1 alpha-2 country code to find available attributes.
    , regionCode :: (Core.Maybe Core.Text)
      -- | Metadata for all available attributes are returned when this field is set to true, disregarding parent and category/name fields. language/code and region/code are required when show/all is set to true.
    , showAll :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationAttributesList' with the minimum fields required to make a request.
newMyBusinessBusinessInformationAttributesList 
    :: 
                                               MyBusinessBusinessInformationAttributesList
newMyBusinessBusinessInformationAttributesList
  = MyBusinessBusinessInformationAttributesList{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                categoryName = Core.Nothing,
                                                languageCode = Core.Nothing,
                                                pageSize = Core.Nothing, pageToken = Core.Nothing,
                                                parent = Core.Nothing, regionCode = Core.Nothing,
                                                showAll = Core.Nothing, uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationAttributesList
         where
        type Rs MyBusinessBusinessInformationAttributesList =
             ListAttributeMetadataResponse
        type Scopes MyBusinessBusinessInformationAttributesList = '[]
        requestClient MyBusinessBusinessInformationAttributesList{..}
          = go xgafv accessToken callback categoryName languageCode pageSize
              pageToken
              parent
              regionCode
              showAll
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationAttributesListResource)
                      Core.mempty

