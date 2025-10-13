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
-- Module      : Gogol.MyBusinessVerifications.Locations.Verifications.Complete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes a @PENDING@ verification. It is only necessary for non @AUTO@ verification methods. @AUTO@ verification request is instantly @VERIFIED@ upon creation.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference> for @mybusinessverifications.locations.verifications.complete@.
module Gogol.MyBusinessVerifications.Locations.Verifications.Complete
    (
    -- * Resource
      MyBusinessVerificationsLocationsVerificationsCompleteResource

    -- ** Constructing a Request
    , MyBusinessVerificationsLocationsVerificationsComplete (..)
    , newMyBusinessVerificationsLocationsVerificationsComplete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Types

-- | A resource alias for @mybusinessverifications.locations.verifications.complete@ method which the
-- 'MyBusinessVerificationsLocationsVerificationsComplete' request conforms to.
type MyBusinessVerificationsLocationsVerificationsCompleteResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "complete" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CompleteVerificationRequest Core.:>
                       Core.Post '[Core.JSON] CompleteVerificationResponse

-- | Completes a @PENDING@ verification. It is only necessary for non @AUTO@ verification methods. @AUTO@ verification request is instantly @VERIFIED@ upon creation.
--
-- /See:/ 'newMyBusinessVerificationsLocationsVerificationsComplete' smart constructor.
data MyBusinessVerificationsLocationsVerificationsComplete = MyBusinessVerificationsLocationsVerificationsComplete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the verification to complete.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CompleteVerificationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessVerificationsLocationsVerificationsComplete' with the minimum fields required to make a request.
newMyBusinessVerificationsLocationsVerificationsComplete 
    :: 
                                                         Core.Text
       -- ^  Required. Resource name of the verification to complete. See 'name'.
    -> CompleteVerificationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessVerificationsLocationsVerificationsComplete
newMyBusinessVerificationsLocationsVerificationsComplete name
  payload
  = MyBusinessVerificationsLocationsVerificationsComplete{xgafv =
                                                            Core.Nothing,
                                                          accessToken = Core.Nothing,
                                                          callback = Core.Nothing, name = name,
                                                          payload = payload,
                                                          uploadType = Core.Nothing,
                                                          uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessVerificationsLocationsVerificationsComplete
         where
        type Rs MyBusinessVerificationsLocationsVerificationsComplete =
             CompleteVerificationResponse
        type Scopes MyBusinessVerificationsLocationsVerificationsComplete =
             '[]
        requestClient
          MyBusinessVerificationsLocationsVerificationsComplete{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessVerificationsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessVerificationsLocationsVerificationsCompleteResource)
                      Core.mempty

