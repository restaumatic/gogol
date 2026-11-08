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
-- Module      : Gogol.MyBusinessBusinessInformation.Categories.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of business categories. Search will match the category name but not the category ID. Search only matches the front of a category name (that is, \'food\' may return \'Food Court\' but not \'Fast Food Restaurant\').
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.categories.list@.
module Gogol.MyBusinessBusinessInformation.Categories.List
    (
    -- * Resource
      MyBusinessBusinessInformationCategoriesListResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationCategoriesList (..)
    , newMyBusinessBusinessInformationCategoriesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.categories.list@ method which the
-- 'MyBusinessBusinessInformationCategoriesList' request conforms to.
type MyBusinessBusinessInformationCategoriesListResource =
     "v1" Core.:>
       "categories" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "regionCode" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "view" CategoriesListView Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ListCategoriesResponse

-- | Returns a list of business categories. Search will match the category name but not the category ID. Search only matches the front of a category name (that is, \'food\' may return \'Food Court\' but not \'Fast Food Restaurant\').
--
-- /See:/ 'newMyBusinessBusinessInformationCategoriesList' smart constructor.
data MyBusinessBusinessInformationCategoriesList = MyBusinessBusinessInformationCategoriesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter string from user. The only field that supported is @displayName@. Eg: @filter=displayName=foo@.
    , filter :: (Core.Maybe Core.Text)
      -- | Required. The BCP 47 code of language.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. How many categories to fetch per page. Default is 100, minimum is 1, and maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If specified, the next page of categories will be fetched.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The ISO 3166-1 alpha-2 country code.
    , regionCode :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. Specifies which parts to the Category resource should be returned in the response.
    , view :: (Core.Maybe CategoriesListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationCategoriesList' with the minimum fields required to make a request.
newMyBusinessBusinessInformationCategoriesList 
    :: 
                                               MyBusinessBusinessInformationCategoriesList
newMyBusinessBusinessInformationCategoriesList
  = MyBusinessBusinessInformationCategoriesList{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                filter = Core.Nothing, languageCode = Core.Nothing,
                                                pageSize = Core.Nothing, pageToken = Core.Nothing,
                                                regionCode = Core.Nothing,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing, view = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationCategoriesList
         where
        type Rs MyBusinessBusinessInformationCategoriesList =
             ListCategoriesResponse
        type Scopes MyBusinessBusinessInformationCategoriesList = '[]
        requestClient MyBusinessBusinessInformationCategoriesList{..}
          = go xgafv accessToken callback filter languageCode pageSize
              pageToken
              regionCode
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationCategoriesListResource)
                      Core.mempty

