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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all offers under a given app, product, or purchase option.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.list@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.List
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersListResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.list@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersListResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "purchaseOptions" Core.:>
                   Core.Capture "purchaseOptionId" Core.Text Core.:>
                     "offers" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "pageSize" Core.Int32 Core.:>
                               Core.QueryParam "pageToken" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] ListOneTimeProductOffersResponse

-- | Lists all offers under a given app, product, or purchase option.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) for which the offers should be read.
    , packageName :: Core.Text
      -- | Optional. The maximum number of offers to return. The service may return fewer than this value. If unspecified, at most 50 offers will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token, received from a previous @ListOneTimeProductsOffers@ call. Provide this to retrieve the subsequent page. When paginating, product/id, package/name and purchase/option/id provided to @ListOneTimeProductsOffersRequest@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent one-time product (ID) for which the offers should be read. May be specified as \'-\' to read all offers under an app.
    , productId :: Core.Text
      -- | Required. The parent purchase option (ID) for which the offers should be read. May be specified as \'-\' to read all offers under a one-time product or an app. Must be specified as \'-\' if product_id is specified as \'-\'.
    , purchaseOptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList 
    :: 
                                                                        Core.Text
       -- ^  Required. The parent app (package name) for which the offers should be read. See 'packageName'.
    -> Core.Text
       -- ^  Required. The parent one-time product (ID) for which the offers should be read. May be specified as \'-\' to read all offers under an app. See 'productId'.
    -> Core.Text
       -- ^  Required. The parent purchase option (ID) for which the offers should be read. May be specified as \'-\' to read all offers under a one-time product or an app. Must be specified as \'-\' if product_id is specified as \'-\'. See 'purchaseOptionId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
  packageName productId purchaseOptionId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList{xgafv
                                                                           = Core.Nothing,
                                                                         accessToken = Core.Nothing,
                                                                         callback = Core.Nothing,
                                                                         packageName = packageName,
                                                                         pageSize = Core.Nothing,
                                                                         pageToken = Core.Nothing,
                                                                         productId = productId,
                                                                         purchaseOptionId =
                                                                           purchaseOptionId,
                                                                         uploadType = Core.Nothing,
                                                                         uploadProtocol =
                                                                           Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
             = ListOneTimeProductOffersResponse
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersList{..}
          = go packageName productId purchaseOptionId xgafv accessToken
              callback
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersListResource)
                      Core.mempty

