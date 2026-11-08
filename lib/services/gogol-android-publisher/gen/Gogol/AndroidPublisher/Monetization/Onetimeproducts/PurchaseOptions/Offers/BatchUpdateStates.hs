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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.BatchUpdateStates
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of one-time product offer states.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdateStates@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.BatchUpdateStates
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStatesResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdateStates@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStatesResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "purchaseOptions" Core.:>
                   Core.Capture "purchaseOptionId" Core.Text Core.:>
                     "offers:batchUpdateStates" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     BatchUpdateOneTimeProductOfferStatesRequest
                                     Core.:>
                                     Core.Post '[Core.JSON]
                                       BatchUpdateOneTimeProductOfferStatesResponse

-- | Updates a batch of one-time product offer states.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the updated one-time product offers.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchUpdateOneTimeProductOfferStatesRequest
      -- | Required. The product ID of the parent one-time product, if all updated offers belong to the same one-time product. If this batch update spans multiple one-time products, set this field to \"-\".
    , productId :: Core.Text
      -- | Required. The purchase option ID of the parent purchase option, if all updated offers belong to the same purchase option. If this batch update spans multiple purchase options, set this field to \"-\".
    , purchaseOptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates 
    :: 
                                                                                     Core.Text
       -- ^  Required. The parent app (package name) of the updated one-time product offers. See 'packageName'.
    -> BatchUpdateOneTimeProductOfferStatesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent one-time product, if all updated offers belong to the same one-time product. If this batch update spans multiple one-time products, set this field to \"-\". See 'productId'.
    -> Core.Text
       -- ^  Required. The purchase option ID of the parent purchase option, if all updated offers belong to the same purchase option. If this batch update spans multiple purchase options, set this field to \"-\". See 'purchaseOptionId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
  packageName payload productId purchaseOptionId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates{xgafv
                                                                                        =
                                                                                        Core.Nothing,
                                                                                      accessToken =
                                                                                        Core.Nothing,
                                                                                      callback =
                                                                                        Core.Nothing,
                                                                                      packageName =
                                                                                        packageName,
                                                                                      payload =
                                                                                        payload,
                                                                                      productId =
                                                                                        productId,
                                                                                      purchaseOptionId
                                                                                        =
                                                                                        purchaseOptionId,
                                                                                      uploadType =
                                                                                        Core.Nothing,
                                                                                      uploadProtocol
                                                                                        =
                                                                                        Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
             = BatchUpdateOneTimeProductOfferStatesResponse
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStates{..}
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
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersBatchUpdateStatesResource)
                      Core.mempty

