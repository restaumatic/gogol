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
-- Module      : Gogol.MyBusinessVerifications.VerificationTokens.Generate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate a token for the provided location data to verify the location.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference> for @mybusinessverifications.verificationTokens.generate@.
module Gogol.MyBusinessVerifications.VerificationTokens.Generate
    (
    -- * Resource
      MyBusinessVerificationsVerificationTokensGenerateResource

    -- ** Constructing a Request
    , MyBusinessVerificationsVerificationTokensGenerate (..)
    , newMyBusinessVerificationsVerificationTokensGenerate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Types

-- | A resource alias for @mybusinessverifications.verificationTokens.generate@ method which the
-- 'MyBusinessVerificationsVerificationTokensGenerate' request conforms to.
type MyBusinessVerificationsVerificationTokensGenerateResource =
     "v1" Core.:>
       "verificationTokens:generate" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GenerateInstantVerificationTokenRequest
                       Core.:>
                       Core.Post '[Core.JSON] GenerateInstantVerificationTokenResponse

-- | Generate a token for the provided location data to verify the location.
--
-- /See:/ 'newMyBusinessVerificationsVerificationTokensGenerate' smart constructor.
data MyBusinessVerificationsVerificationTokensGenerate = MyBusinessVerificationsVerificationTokensGenerate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GenerateInstantVerificationTokenRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessVerificationsVerificationTokensGenerate' with the minimum fields required to make a request.
newMyBusinessVerificationsVerificationTokensGenerate 
    :: 
                                                     GenerateInstantVerificationTokenRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessVerificationsVerificationTokensGenerate
newMyBusinessVerificationsVerificationTokensGenerate payload
  = MyBusinessVerificationsVerificationTokensGenerate{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing, payload = payload,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessVerificationsVerificationTokensGenerate
         where
        type Rs MyBusinessVerificationsVerificationTokensGenerate =
             GenerateInstantVerificationTokenResponse
        type Scopes MyBusinessVerificationsVerificationTokensGenerate = '[]
        requestClient MyBusinessVerificationsVerificationTokensGenerate{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessVerificationsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessVerificationsVerificationTokensGenerateResource)
                      Core.mempty

