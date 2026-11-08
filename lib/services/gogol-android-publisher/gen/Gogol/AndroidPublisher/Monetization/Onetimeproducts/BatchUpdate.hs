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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchUpdate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates one or more one-time products.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.batchUpdate@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchUpdate
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsBatchUpdateResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsBatchUpdate (..)
    , newAndroidPublisherMonetizationOnetimeproductsBatchUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.batchUpdate@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsBatchUpdate' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsBatchUpdateResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts:batchUpdate" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] BatchUpdateOneTimeProductsRequest Core.:>
                             Core.Post '[Core.JSON] BatchUpdateOneTimeProductsResponse

-- | Creates or updates one or more one-time products.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsBatchUpdate' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsBatchUpdate = AndroidPublisherMonetizationOnetimeproductsBatchUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) for which the one-time products should be updated. Must be equal to the package_name field on all the OneTimeProduct resources.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchUpdateOneTimeProductsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsBatchUpdate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsBatchUpdate 
    :: 
                                                          Core.Text
       -- ^  Required. The parent app (package name) for which the one-time products should be updated. Must be equal to the package_name field on all the OneTimeProduct resources. See 'packageName'.
    -> BatchUpdateOneTimeProductsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidPublisherMonetizationOnetimeproductsBatchUpdate
newAndroidPublisherMonetizationOnetimeproductsBatchUpdate
  packageName payload
  = AndroidPublisherMonetizationOnetimeproductsBatchUpdate{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing,
                                                           packageName = packageName,
                                                           payload = payload,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsBatchUpdate
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsBatchUpdate =
             BatchUpdateOneTimeProductsResponse
        type Scopes AndroidPublisherMonetizationOnetimeproductsBatchUpdate
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsBatchUpdate{..}
          = go packageName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsBatchUpdateResource)
                      Core.mempty

