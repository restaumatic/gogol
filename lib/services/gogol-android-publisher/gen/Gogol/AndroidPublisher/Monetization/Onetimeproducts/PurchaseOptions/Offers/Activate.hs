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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.Activate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a one-time product offer.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.activate@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.Offers.Activate
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivateResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.activate@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivateResource
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
                       Core.CaptureMode "offerId" "activate" Core.Text Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] ActivateOneTimeProductOfferRequest
                                       Core.:> Core.Post '[Core.JSON] OneTimeProductOffer

-- | Activates a one-time product offer.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The offer ID of the offer to activate.
    , offerId :: Core.Text
      -- | Required. The parent app (package name) of the offer to activate.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: ActivateOneTimeProductOfferRequest
      -- | Required. The parent one-time product (ID) of the offer to activate.
    , productId :: Core.Text
      -- | Required. The parent purchase option (ID) of the offer to activate.
    , purchaseOptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate 
    :: 
                                                                            Core.Text
       -- ^  Required. The offer ID of the offer to activate. See 'offerId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the offer to activate. See 'packageName'.
    -> ActivateOneTimeProductOfferRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The parent one-time product (ID) of the offer to activate. See 'productId'.
    -> Core.Text
       -- ^  Required. The parent purchase option (ID) of the offer to activate. See 'purchaseOptionId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
  offerId packageName payload productId purchaseOptionId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate{xgafv
                                                                               = Core.Nothing,
                                                                             accessToken =
                                                                               Core.Nothing,
                                                                             callback =
                                                                               Core.Nothing,
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
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
             = OneTimeProductOffer
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivate{..}
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
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsOffersActivateResource)
                      Core.mempty

