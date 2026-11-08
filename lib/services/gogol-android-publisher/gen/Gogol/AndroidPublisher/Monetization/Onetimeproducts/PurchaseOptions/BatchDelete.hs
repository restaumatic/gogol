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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.BatchDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes purchase options across one or multiple one-time products. By default this operation will fail if there are any existing offers under the deleted purchase options. Use the force parameter to override the default behavior.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.purchaseOptions.batchDelete@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.PurchaseOptions.BatchDelete
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDeleteResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete (..)
    , newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.purchaseOptions.batchDelete@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDeleteResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "purchaseOptions:batchDelete" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] BatchDeletePurchaseOptionsRequest Core.:>
                                 Core.Post '[Core.JSON] ()

-- | Deletes purchase options across one or multiple one-time products. By default this operation will fail if there are any existing offers under the deleted purchase options. Use the force parameter to override the default behavior.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the purchase options to delete.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchDeletePurchaseOptionsRequest
      -- | Required. The product ID of the parent one-time product, if all purchase options to delete belong to the same one-time product. If this batch delete spans multiple one-time products, set this field to \"-\".
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete 
    :: 
                                                                         Core.Text
       -- ^  Required. The parent app (package name) of the purchase options to delete. See 'packageName'.
    -> BatchDeletePurchaseOptionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent one-time product, if all purchase options to delete belong to the same one-time product. If this batch delete spans multiple one-time products, set this field to \"-\". See 'productId'.
    -> AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
newAndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
  packageName payload productId
  = AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete{xgafv
                                                                            = Core.Nothing,
                                                                          accessToken =
                                                                            Core.Nothing,
                                                                          callback = Core.Nothing,
                                                                          packageName = packageName,
                                                                          payload = payload,
                                                                          productId = productId,
                                                                          uploadType = Core.Nothing,
                                                                          uploadProtocol =
                                                                            Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
         where
        type Rs
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
             = ()
        type Scopes
               AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDelete{..}
          = go packageName productId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsPurchaseOptionsBatchDeleteResource)
                      Core.mempty

