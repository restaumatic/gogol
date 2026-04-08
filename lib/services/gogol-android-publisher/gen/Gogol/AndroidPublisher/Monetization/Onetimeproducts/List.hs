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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all one-time products under a given app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.list@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.List
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsListResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsList (..)
    , newAndroidPublisherMonetizationOnetimeproductsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.list@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsList' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsListResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListOneTimeProductsResponse

-- | Lists all one-time products under a given app.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsList' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsList = AndroidPublisherMonetizationOnetimeproductsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) for which the one-time product should be read.
    , packageName :: Core.Text
      -- | Optional. The maximum number of one-time product to return. The service may return fewer than this value. If unspecified, at most 50 one-time products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token, received from a previous @ListOneTimeProducts@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListOneTimeProducts@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsList' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsList 
    :: 
                                                   Core.Text
       -- ^  Required. The parent app (package name) for which the one-time product should be read. See 'packageName'.
    -> AndroidPublisherMonetizationOnetimeproductsList
newAndroidPublisherMonetizationOnetimeproductsList packageName
  = AndroidPublisherMonetizationOnetimeproductsList{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing,
                                                    packageName = packageName,
                                                    pageSize = Core.Nothing,
                                                    pageToken = Core.Nothing,
                                                    uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsList
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsList =
             ListOneTimeProductsResponse
        type Scopes AndroidPublisherMonetizationOnetimeproductsList =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherMonetizationOnetimeproductsList{..}
          = go packageName xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherMonetizationOnetimeproductsListResource)
                      Core.mempty

