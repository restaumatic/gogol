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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads one or more one-time product offers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchGet@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.BatchGet
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGetResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchGet@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGetResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "purchaseOptions" Core.:>
                   Core.Capture "purchaseOptionId" Core.Text Core.:>
                     "offers:batchGet" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] BatchGetOneTimeProductOffersRequest
                                     Core.:>
                                     Core.Post '[Core.JSON] BatchGetOneTimeProductOffersResponse

-- | Reads one or more one-time product offers.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the updated offers. Must be equal to the package_name field on all the updated OneTimeProductOffer resources.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchGetOneTimeProductOffersRequest
      -- | Required. The product ID of the parent one-time product, if all updated offers belong to the same product. If this request spans multiple one-time products, set this field to \"-\".
    , productId :: Core.Text
      -- | Required. The parent purchase option (ID) for which the offers should be updated. May be specified as \'-\' to update offers from multiple purchase options.
    , purchaseOptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet 
    :: 
                                                                            Core.Text
       -- ^  Required. The parent app (package name) of the updated offers. Must be equal to the package_name field on all the updated OneTimeProductOffer resources. See 'packageName'.
    -> BatchGetOneTimeProductOffersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent one-time product, if all updated offers belong to the same product. If this request spans multiple one-time products, set this field to \"-\". See 'productId'.
    -> Core.Text
       -- ^  Required. The parent purchase option (ID) for which the offers should be updated. May be specified as \'-\' to update offers from multiple purchase options. See 'purchaseOptionId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
  packageName payload productId purchaseOptionId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet{xgafv
                                                                               = Core.Nothing,
                                                                             accessToken =
                                                                               Core.Nothing,
                                                                             callback =
                                                                               Core.Nothing,
                                                                             packageName =
                                                                               packageName,
                                                                             payload = payload,
                                                                             productId = productId,
                                                                             purchaseOptionId =
                                                                               purchaseOptionId,
                                                                             uploadType =
                                                                               Core.Nothing,
                                                                             uploadProtocol =
                                                                               Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
             = BatchGetOneTimeProductOffersResponse
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGet{..}
          = go packageName productId purchaseOptionId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchGetResource)
                      Core.mempty

