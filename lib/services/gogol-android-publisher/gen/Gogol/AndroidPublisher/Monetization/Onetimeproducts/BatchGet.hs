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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads one or more one-time products.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.batchGet@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchGet
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsBatchGetResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsBatchGet (..)
    , newAndroidPublisherMonetizationOnetimeproductsBatchGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.batchGet@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsBatchGet' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsBatchGetResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts:batchGet" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParams "productIds" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] BatchGetOneTimeProductsResponse

-- | Reads one or more one-time products.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsBatchGet' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsBatchGet = AndroidPublisherMonetizationOnetimeproductsBatchGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) for which the products should be retrieved. Must be equal to the package_name field on all requests.
    , packageName :: Core.Text
      -- | Required. A list of up to 100 product IDs to retrieve. All IDs must be different.
    , productIds :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsBatchGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsBatchGet 
    :: 
                                                       Core.Text
       -- ^  Required. The parent app (package name) for which the products should be retrieved. Must be equal to the package_name field on all requests. See 'packageName'.
    -> AndroidPublisherMonetizationOnetimeproductsBatchGet
newAndroidPublisherMonetizationOnetimeproductsBatchGet packageName
  = AndroidPublisherMonetizationOnetimeproductsBatchGet{xgafv =
                                                          Core.Nothing,
                                                        accessToken = Core.Nothing,
                                                        callback = Core.Nothing,
                                                        packageName = packageName,
                                                        productIds = Core.Nothing,
                                                        uploadType = Core.Nothing,
                                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsBatchGet
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsBatchGet =
             BatchGetOneTimeProductsResponse
        type Scopes AndroidPublisherMonetizationOnetimeproductsBatchGet =
             '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsBatchGet{..}
          = go packageName xgafv accessToken callback
              (productIds Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsBatchGetResource)
                      Core.mempty

