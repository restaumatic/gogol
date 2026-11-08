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
-- Module      : Gogol.DFAReporting.DynamicProfiles.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new dynamic profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicProfiles.insert@.
module Gogol.DFAReporting.DynamicProfiles.Insert
    (
    -- * Resource
      DFAReportingDynamicProfilesInsertResource

    -- ** Constructing a Request
    , DFAReportingDynamicProfilesInsert (..)
    , newDFAReportingDynamicProfilesInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.dynamicProfiles.insert@ method which the
-- 'DFAReportingDynamicProfilesInsert' request conforms to.
type DFAReportingDynamicProfilesInsertResource =
     "dfareporting" Core.:>
       "v5" Core.:>
         "studio" Core.:>
           "dynamicProfiles" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] DynamicProfile Core.:>
                           Core.Post '[Core.JSON] DynamicProfile

-- | Inserts a new dynamic profile.
--
-- /See:/ 'newDFAReportingDynamicProfilesInsert' smart constructor.
data DFAReportingDynamicProfilesInsert = DFAReportingDynamicProfilesInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: DynamicProfile
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicProfilesInsert' with the minimum fields required to make a request.
newDFAReportingDynamicProfilesInsert 
    :: 
                                     DynamicProfile
       -- ^  Multipart request metadata. See 'payload'.
    -> DFAReportingDynamicProfilesInsert
newDFAReportingDynamicProfilesInsert payload
  = DFAReportingDynamicProfilesInsert{xgafv = Core.Nothing,
                                      accessToken = Core.Nothing, callback = Core.Nothing,
                                      payload = payload, uploadType = Core.Nothing,
                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest DFAReportingDynamicProfilesInsert where
        type Rs DFAReportingDynamicProfilesInsert = DynamicProfile
        type Scopes DFAReportingDynamicProfilesInsert =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingDynamicProfilesInsert{..}
          = go xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingDynamicProfilesInsertResource)
                      Core.mempty

