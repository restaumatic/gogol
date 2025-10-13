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
-- Module      : Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more one-time products.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.onetimeproducts.batchDelete@.
module Gogol.AndroidPublisher.Monetization.Onetimeproducts.BatchDelete
    (
    -- * Resource
      AndroidPublisherMonetizationOnetimeproductsBatchDeleteResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationOnetimeproductsBatchDelete (..)
    , newAndroidPublisherMonetizationOnetimeproductsBatchDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.onetimeproducts.batchDelete@ method which the
-- 'AndroidPublisherMonetizationOnetimeproductsBatchDelete' request conforms to.
type AndroidPublisherMonetizationOnetimeproductsBatchDeleteResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "oneTimeProducts:batchDelete" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] BatchDeleteOneTimeProductsRequest Core.:>
                             Core.Post '[Core.JSON] ()

-- | Deletes one or more one-time products.
--
-- /See:/ 'newAndroidPublisherMonetizationOnetimeproductsBatchDelete' smart constructor.
data AndroidPublisherMonetizationOnetimeproductsBatchDelete = AndroidPublisherMonetizationOnetimeproductsBatchDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) for which the one-time products should be deleted. Must be equal to the package_name field on all the OneTimeProduct resources.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchDeleteOneTimeProductsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationOnetimeproductsBatchDelete' with the minimum fields required to make a request.
newAndroidPublisherMonetizationOnetimeproductsBatchDelete 
    :: 
                                                          Core.Text
       -- ^  Required. The parent app (package name) for which the one-time products should be deleted. Must be equal to the package_name field on all the OneTimeProduct resources. See 'packageName'.
    -> BatchDeleteOneTimeProductsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidPublisherMonetizationOnetimeproductsBatchDelete
newAndroidPublisherMonetizationOnetimeproductsBatchDelete
  packageName payload
  = AndroidPublisherMonetizationOnetimeproductsBatchDelete{xgafv =
                                                             Core.Nothing,
                                                           accessToken = Core.Nothing,
                                                           callback = Core.Nothing,
                                                           packageName = packageName,
                                                           payload = payload,
                                                           uploadType = Core.Nothing,
                                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherMonetizationOnetimeproductsBatchDelete
         where
        type Rs AndroidPublisherMonetizationOnetimeproductsBatchDelete = ()
        type Scopes AndroidPublisherMonetizationOnetimeproductsBatchDelete
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationOnetimeproductsBatchDelete{..}
          = go packageName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationOnetimeproductsBatchDeleteResource)
                      Core.mempty

