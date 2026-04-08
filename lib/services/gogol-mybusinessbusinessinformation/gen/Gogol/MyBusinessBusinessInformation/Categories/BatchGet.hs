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
-- Module      : Gogol.MyBusinessBusinessInformation.Categories.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of business categories for the provided language and GConcept ids.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.categories.batchGet@.
module Gogol.MyBusinessBusinessInformation.Categories.BatchGet
    (
    -- * Resource
      MyBusinessBusinessInformationCategoriesBatchGetResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationCategoriesBatchGet (..)
    , newMyBusinessBusinessInformationCategoriesBatchGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.categories.batchGet@ method which the
-- 'MyBusinessBusinessInformationCategoriesBatchGet' request conforms to.
type MyBusinessBusinessInformationCategoriesBatchGetResource =
     "v1" Core.:>
       "categories:batchGet" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "languageCode" Core.Text Core.:>
                 Core.QueryParams "names" Core.Text Core.:>
                   Core.QueryParam "regionCode" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "view" CategoriesBatchGetView Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] BatchGetCategoriesResponse

-- | Returns a list of business categories for the provided language and GConcept ids.
--
-- /See:/ 'newMyBusinessBusinessInformationCategoriesBatchGet' smart constructor.
data MyBusinessBusinessInformationCategoriesBatchGet = MyBusinessBusinessInformationCategoriesBatchGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The BCP 47 code of language that the category names should be returned in.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. At least one name must be set. The GConcept ids the localized category names should be returned for. To return details for more than one category, repeat this parameter in the request.
    , names :: (Core.Maybe [Core.Text])
      -- | Optional. The ISO 3166-1 alpha-2 country code used to infer non-standard language.
    , regionCode :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. Specifies which parts to the Category resource should be returned in the response.
    , view :: (Core.Maybe CategoriesBatchGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationCategoriesBatchGet' with the minimum fields required to make a request.
newMyBusinessBusinessInformationCategoriesBatchGet 
    :: 
                                                   MyBusinessBusinessInformationCategoriesBatchGet
newMyBusinessBusinessInformationCategoriesBatchGet
  = MyBusinessBusinessInformationCategoriesBatchGet{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing,
                                                    languageCode = Core.Nothing,
                                                    names = Core.Nothing, regionCode = Core.Nothing,
                                                    uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing,
                                                    view = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationCategoriesBatchGet
         where
        type Rs MyBusinessBusinessInformationCategoriesBatchGet =
             BatchGetCategoriesResponse
        type Scopes MyBusinessBusinessInformationCategoriesBatchGet = '[]
        requestClient MyBusinessBusinessInformationCategoriesBatchGet{..}
          = go xgafv accessToken callback languageCode
              (names Core.^. Core._Default)
              regionCode
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationCategoriesBatchGetResource)
                      Core.mempty

