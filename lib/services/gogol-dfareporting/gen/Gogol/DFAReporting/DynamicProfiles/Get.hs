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
-- Module      : Gogol.DFAReporting.DynamicProfiles.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a dynamic profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicProfiles.get@.
module Gogol.DFAReporting.DynamicProfiles.Get
    (
    -- * Resource
      DFAReportingDynamicProfilesGetResource

    -- ** Constructing a Request
    , DFAReportingDynamicProfilesGet (..)
    , newDFAReportingDynamicProfilesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.dynamicProfiles.get@ method which the
-- 'DFAReportingDynamicProfilesGet' request conforms to.
type DFAReportingDynamicProfilesGetResource =
     "dfareporting" Core.:>
       "v5" Core.:>
         "studio" Core.:>
           "dynamicProfiles" Core.:>
             Core.Capture "dynamicProfileId" Core.Int64 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] DynamicProfile

-- | Gets a dynamic profile by ID.
--
-- /See:/ 'newDFAReportingDynamicProfilesGet' smart constructor.
data DFAReportingDynamicProfilesGet = DFAReportingDynamicProfilesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dynamic profile ID.
    , dynamicProfileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicProfilesGet' with the minimum fields required to make a request.
newDFAReportingDynamicProfilesGet 
    :: 
                                  Core.Int64
       -- ^  Required. Dynamic profile ID. See 'dynamicProfileId'.
    -> DFAReportingDynamicProfilesGet
newDFAReportingDynamicProfilesGet dynamicProfileId
  = DFAReportingDynamicProfilesGet{xgafv = Core.Nothing,
                                   accessToken = Core.Nothing, callback = Core.Nothing,
                                   dynamicProfileId = dynamicProfileId, uploadType = Core.Nothing,
                                   uploadProtocol = Core.Nothing}
instance Core.GoogleRequest DFAReportingDynamicProfilesGet where
        type Rs DFAReportingDynamicProfilesGet = DynamicProfile
        type Scopes DFAReportingDynamicProfilesGet =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingDynamicProfilesGet{..}
          = go dynamicProfileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DFAReportingDynamicProfilesGetResource)
                      Core.mempty

