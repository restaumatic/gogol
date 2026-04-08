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
-- Module      : Gogol.AndroidPublisher.Purchases.Productsv2.Getproductpurchasev2
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the purchase and consumption status of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.productsv2.getproductpurchasev2@.
module Gogol.AndroidPublisher.Purchases.Productsv2.Getproductpurchasev2
    (
    -- * Resource
      AndroidPublisherPurchasesProductsv2Getproductpurchasev2Resource

    -- ** Constructing a Request
    , AndroidPublisherPurchasesProductsv2Getproductpurchasev2 (..)
    , newAndroidPublisherPurchasesProductsv2Getproductpurchasev2
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.purchases.productsv2.getproductpurchasev2@ method which the
-- 'AndroidPublisherPurchasesProductsv2Getproductpurchasev2' request conforms to.
type AndroidPublisherPurchasesProductsv2Getproductpurchasev2Resource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "purchases" Core.:>
               "productsv2" Core.:>
                 "tokens" Core.:>
                   Core.Capture "token" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ProductPurchaseV2

-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ 'newAndroidPublisherPurchasesProductsv2Getproductpurchasev2' smart constructor.
data AndroidPublisherPurchasesProductsv2Getproductpurchasev2 = AndroidPublisherPurchasesProductsv2Getproductpurchasev2
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The package name of the application the inapp product was sold in (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | The token provided to the user\'s device when the inapp product was purchased.
    , token :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesProductsv2Getproductpurchasev2' with the minimum fields required to make a request.
newAndroidPublisherPurchasesProductsv2Getproductpurchasev2 
    :: 
                                                           Core.Text
       -- ^  The package name of the application the inapp product was sold in (for example, \'com.some.thing\'). See 'packageName'.
    -> Core.Text
       -- ^  The token provided to the user\'s device when the inapp product was purchased. See 'token'.
    -> AndroidPublisherPurchasesProductsv2Getproductpurchasev2
newAndroidPublisherPurchasesProductsv2Getproductpurchasev2
  packageName token
  = AndroidPublisherPurchasesProductsv2Getproductpurchasev2{xgafv =
                                                              Core.Nothing,
                                                            accessToken = Core.Nothing,
                                                            callback = Core.Nothing,
                                                            packageName = packageName,
                                                            token = token,
                                                            uploadType = Core.Nothing,
                                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherPurchasesProductsv2Getproductpurchasev2
         where
        type Rs AndroidPublisherPurchasesProductsv2Getproductpurchasev2 =
             ProductPurchaseV2
        type Scopes AndroidPublisherPurchasesProductsv2Getproductpurchasev2
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherPurchasesProductsv2Getproductpurchasev2{..}
          = go packageName token xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherPurchasesProductsv2Getproductpurchasev2Resource)
                      Core.mempty

