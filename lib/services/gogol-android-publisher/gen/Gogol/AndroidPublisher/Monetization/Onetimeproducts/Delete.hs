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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a one-time product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.delete@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.Delete
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsDeleteResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsDelete (..)
    , newAndroidPublisherMonetizationOnetimeproductsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.delete@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsDelete' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsDeleteResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "latencyTolerance"
                         MonetizationOnetimeproductsDeleteLatencyTolerance
                         Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Deletes a one-time product.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsDelete' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsDelete = AndroidPublisherMonetizationOnetimeproductsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive.
    , latencyTolerance :: (Core.Maybe MonetizationOnetimeproductsDeleteLatencyTolerance)
      -- | Required. The parent app (package name) of the one-time product to delete.
    , packageName :: Core.Text
      -- | Required. The one-time product ID of the one-time product to delete.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsDelete' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsDelete 
    :: 
                                                     Core.Text
       -- ^  Required. The parent app (package name) of the one-time product to delete. See 'packageName'.
    -> Core.Text
       -- ^  Required. The one-time product ID of the one-time product to delete. See 'productId'.
    -> AndroidPublisherMonetizationOnetimeproductsDelete
newAndroidPublisherMonetizationOnetimeproductsDelete packageName
  productId
  = AndroidPublisherMonetizationOnetimeproductsDelete{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing,
                                                      latencyTolerance = Core.Nothing,
                                                      packageName = packageName,
                                                      productId = productId,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsDelete
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsDelete = ()
        type Scopes AndroidPublisherMonetizationOnetimeproductsDelete =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherMonetizationOnetimeproductsDelete{..}
          = go packageName productId xgafv accessToken callback
              latencyTolerance
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsDeleteResource)
                      Core.mempty

