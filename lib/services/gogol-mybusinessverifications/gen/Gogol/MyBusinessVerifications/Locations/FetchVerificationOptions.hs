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
-- Module      : Gogol.MyBusinessVerifications.Locations.FetchVerificationOptions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports all eligible verification options for a location in a specific language.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference> for @mybusinessverifications.locations.fetchVerificationOptions@.
module Gogol.MyBusinessVerifications.Locations.FetchVerificationOptions
    (
    -- * Resource
      MyBusinessVerificationsLocationsFetchVerificationOptionsResource

    -- ** Constructing a Request
    , MyBusinessVerificationsLocationsFetchVerificationOptions (..)
    , newMyBusinessVerificationsLocationsFetchVerificationOptions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Types

-- | A resource alias for @mybusinessverifications.locations.fetchVerificationOptions@ method which the
-- 'MyBusinessVerificationsLocationsFetchVerificationOptions' request conforms to.
type MyBusinessVerificationsLocationsFetchVerificationOptionsResource
     =
     "v1" Core.:>
       Core.CaptureMode "location" "fetchVerificationOptions" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] FetchVerificationOptionsRequest Core.:>
                       Core.Post '[Core.JSON] FetchVerificationOptionsResponse

-- | Reports all eligible verification options for a location in a specific language.
--
-- /See:/ 'newMyBusinessVerificationsLocationsFetchVerificationOptions' smart constructor.
data MyBusinessVerificationsLocationsFetchVerificationOptions = MyBusinessVerificationsLocationsFetchVerificationOptions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The location to verify.
    , location :: Core.Text
      -- | Multipart request metadata.
    , payload :: FetchVerificationOptionsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessVerificationsLocationsFetchVerificationOptions' with the minimum fields required to make a request.
newMyBusinessVerificationsLocationsFetchVerificationOptions 
    :: 
                                                            Core.Text
       -- ^  Required. The location to verify. See 'location'.
    -> FetchVerificationOptionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessVerificationsLocationsFetchVerificationOptions
newMyBusinessVerificationsLocationsFetchVerificationOptions
  location payload
  = MyBusinessVerificationsLocationsFetchVerificationOptions{xgafv =
                                                               Core.Nothing,
                                                             accessToken = Core.Nothing,
                                                             callback = Core.Nothing,
                                                             location = location, payload = payload,
                                                             uploadType = Core.Nothing,
                                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessVerificationsLocationsFetchVerificationOptions
         where
        type Rs MyBusinessVerificationsLocationsFetchVerificationOptions =
             FetchVerificationOptionsResponse
        type Scopes
               MyBusinessVerificationsLocationsFetchVerificationOptions
             = '[]
        requestClient
          MyBusinessVerificationsLocationsFetchVerificationOptions{..}
          = go location xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessVerificationsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessVerificationsLocationsFetchVerificationOptionsResource)
                      Core.mempty

