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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel a subscription purchase for the user.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptionsv2.cancel@.
module Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Cancel
    (
    -- * Resource
      AndroidPublisherPurchasesSubscriptionsv2CancelResource

    -- ** Constructing a Request
    , AndroidPublisherPurchasesSubscriptionsv2Cancel (..)
    , newAndroidPublisherPurchasesSubscriptionsv2Cancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.purchases.subscriptionsv2.cancel@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsv2Cancel' request conforms to.
type AndroidPublisherPurchasesSubscriptionsv2CancelResource =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "purchases" Core.:>
               "subscriptionsv2" Core.:>
                 "tokens" Core.:>
                   Core.CaptureMode "token" "cancel" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] CancelSubscriptionPurchaseRequest Core.:>
                                   Core.Post '[Core.JSON] CancelSubscriptionPurchaseResponse

-- | Cancel a subscription purchase for the user.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsv2Cancel' smart constructor.
data AndroidPublisherPurchasesSubscriptionsv2Cancel = AndroidPublisherPurchasesSubscriptionsv2Cancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The package of the application for which this subscription was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelSubscriptionPurchaseRequest
      -- | Required. The token provided to the user\'s device when the subscription was purchased.
    , token :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsv2Cancel' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsv2Cancel 
    :: 
                                                  Core.Text
       -- ^  Required. The package of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
    -> CancelSubscriptionPurchaseRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The token provided to the user\'s device when the subscription was purchased. See 'token'.
    -> AndroidPublisherPurchasesSubscriptionsv2Cancel
newAndroidPublisherPurchasesSubscriptionsv2Cancel packageName
  payload token
  = AndroidPublisherPurchasesSubscriptionsv2Cancel{xgafv =
                                                     Core.Nothing,
                                                   accessToken = Core.Nothing,
                                                   callback = Core.Nothing,
                                                   packageName = packageName, payload = payload,
                                                   token = token, uploadType = Core.Nothing,
                                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           AndroidPublisherPurchasesSubscriptionsv2Cancel
         where
        type Rs AndroidPublisherPurchasesSubscriptionsv2Cancel =
             CancelSubscriptionPurchaseResponse
        type Scopes AndroidPublisherPurchasesSubscriptionsv2Cancel =
             '[Androidpublisher'FullControl]
        requestClient AndroidPublisherPurchasesSubscriptionsv2Cancel{..}
          = go packageName token xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidPublisherPurchasesSubscriptionsv2CancelResource)
                      Core.mempty

