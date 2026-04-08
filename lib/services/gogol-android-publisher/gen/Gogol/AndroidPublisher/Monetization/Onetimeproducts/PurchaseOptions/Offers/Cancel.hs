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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a one-time product offer.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.cancel@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.Cancel
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancelResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.cancel@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancelResource
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
                       Core.CaptureMode "offerId" "cancel" Core.Text Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] CancelOneTimeProductOfferRequest
                                       Core.:> Core.Post '[Core.JSON] OneTimeProductOffer

-- | Cancels a one-time product offer.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The offer ID of the offer to cancel.
    , offerId :: Core.Text
      -- | Required. The parent app (package name) of the offer to cancel.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelOneTimeProductOfferRequest
      -- | Required. The parent one-time product (ID) of the offer to cancel.
    , productId :: Core.Text
      -- | Required. The parent purchase option (ID) of the offer to cancel.
    , purchaseOptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel 
    :: 
                                                                          Core.Text
       -- ^  Required. The offer ID of the offer to cancel. See 'offerId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the offer to cancel. See 'packageName'.
    -> CancelOneTimeProductOfferRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The parent one-time product (ID) of the offer to cancel. See 'productId'.
    -> Core.Text
       -- ^  Required. The parent purchase option (ID) of the offer to cancel. See 'purchaseOptionId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
  offerId packageName payload productId purchaseOptionId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel{xgafv
                                                                             = Core.Nothing,
                                                                           accessToken =
                                                                             Core.Nothing,
                                                                           callback = Core.Nothing,
                                                                           offerId = offerId,
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
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
             = OneTimeProductOffer
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancel{..}
          = go packageName productId purchaseOptionId offerId xgafv
              accessToken
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
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersCancelResource)
                      Core.mempty

