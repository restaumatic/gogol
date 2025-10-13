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
-- Module      : Gogol.MyBusinessVerifications.Locations.GetVoiceOfMerchantState
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the VoiceOfMerchant state.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference> for @mybusinessverifications.locations.getVoiceOfMerchantState@.
module Gogol.MyBusinessVerifications.Locations.GetVoiceOfMerchantState
    (
    -- * Resource
      MyBusinessVerificationsLocationsGetVoiceOfMerchantStateResource

    -- ** Constructing a Request
    , MyBusinessVerificationsLocationsGetVoiceOfMerchantState (..)
    , newMyBusinessVerificationsLocationsGetVoiceOfMerchantState
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Types

-- | A resource alias for @mybusinessverifications.locations.getVoiceOfMerchantState@ method which the
-- 'MyBusinessVerificationsLocationsGetVoiceOfMerchantState' request conforms to.
type MyBusinessVerificationsLocationsGetVoiceOfMerchantStateResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "VoiceOfMerchantState" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] VoiceOfMerchantState

-- | Gets the VoiceOfMerchant state.
--
-- /See:/ 'newMyBusinessVerificationsLocationsGetVoiceOfMerchantState' smart constructor.
data MyBusinessVerificationsLocationsGetVoiceOfMerchantState = MyBusinessVerificationsLocationsGetVoiceOfMerchantState
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the location.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessVerificationsLocationsGetVoiceOfMerchantState' with the minimum fields required to make a request.
newMyBusinessVerificationsLocationsGetVoiceOfMerchantState 
    :: 
                                                           Core.Text
       -- ^  Required. Resource name of the location. See 'name'.
    -> MyBusinessVerificationsLocationsGetVoiceOfMerchantState
newMyBusinessVerificationsLocationsGetVoiceOfMerchantState name
  = MyBusinessVerificationsLocationsGetVoiceOfMerchantState{xgafv =
                                                              Core.Nothing,
                                                            accessToken = Core.Nothing,
                                                            callback = Core.Nothing, name = name,
                                                            uploadType = Core.Nothing,
                                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessVerificationsLocationsGetVoiceOfMerchantState
         where
        type Rs MyBusinessVerificationsLocationsGetVoiceOfMerchantState =
             VoiceOfMerchantState
        type Scopes MyBusinessVerificationsLocationsGetVoiceOfMerchantState
             = '[]
        requestClient
          MyBusinessVerificationsLocationsGetVoiceOfMerchantState{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessVerificationsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessVerificationsLocationsGetVoiceOfMerchantStateResource)
                      Core.mempty

