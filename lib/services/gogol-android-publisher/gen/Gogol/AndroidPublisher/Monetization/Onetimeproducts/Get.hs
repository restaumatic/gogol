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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads a single one-time product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.get@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.Get
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsGetResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsGet (..)
    , newAndroidPublisherMonetizationOnetimeproductsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.get@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsGet' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsGetResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] OneTimeProduct

-- | Reads a single one-time product.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsGet' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsGet = AndroidPublisherMonetizationOnetimeproductsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the product to retrieve.
    , packageName :: Core.Text
      -- | Required. The product ID of the product to retrieve.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsGet 
    :: 
                                                  Core.Text
       -- ^  Required. The parent app (package name) of the product to retrieve. See 'packageName'.
    -> Core.Text
       -- ^  Required. The product ID of the product to retrieve. See 'productId'.
    -> AndroidPublisherMonetizationOnetimeproductsGet
newAndroidPublisherMonetizationOnetimeproductsGet packageName
  productId
  = AndroidPublisherMonetizationOnetimeproductsGet{xgafv =
                                                     Core.Nothing,
                                                   accessToken = Core.Nothing,
                                                   callback = Core.Nothing,
                                                   packageName = packageName, productId = productId,
                                                   uploadType = Core.Nothing,
                                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsGet
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsGet =
             OneTimeProduct
        type Scopes AndroidPublisherMonetizationOnetimeproductsGet =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherMonetizationOnetimeproductsGet{..}
          = go packageName productId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherMonetizationOnetimeproductsGetResource)
                      Core.mempty

