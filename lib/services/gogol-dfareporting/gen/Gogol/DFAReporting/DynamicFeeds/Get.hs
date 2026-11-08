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
-- Module      : Gogol.DFAReporting.DynamicFeeds.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a dynamic feed by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicFeeds.get@.
module Gogol.DFAReporting.DynamicFeeds.Get
    (
    -- * Resource
      DFAReportingDynamicFeedsGetResource

    -- ** Constructing a Request
    , DFAReportingDynamicFeedsGet (..)
    , newDFAReportingDynamicFeedsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.dynamicFeeds.get@ method which the
-- 'DFAReportingDynamicFeedsGet' request conforms to.
type DFAReportingDynamicFeedsGetResource =
     "dfareporting" Core.:>
       "v5" Core.:>
         "studio" Core.:>
           "dynamicFeeds" Core.:>
             Core.Capture "dynamicFeedId" Core.Int64 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] DynamicFeed

-- | Gets a dynamic feed by ID.
--
-- /See:/ 'newDFAReportingDynamicFeedsGet' smart constructor.
data DFAReportingDynamicFeedsGet = DFAReportingDynamicFeedsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Dynamic feed ID.
    , dynamicFeedId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicFeedsGet' with the minimum fields required to make a request.
newDFAReportingDynamicFeedsGet 
    :: 
                               Core.Int64
       -- ^  Required. Dynamic feed ID. See 'dynamicFeedId'.
    -> DFAReportingDynamicFeedsGet
newDFAReportingDynamicFeedsGet dynamicFeedId
  = DFAReportingDynamicFeedsGet{xgafv = Core.Nothing,
                                accessToken = Core.Nothing, callback = Core.Nothing,
                                dynamicFeedId = dynamicFeedId, uploadType = Core.Nothing,
                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest DFAReportingDynamicFeedsGet where
        type Rs DFAReportingDynamicFeedsGet = DynamicFeed
        type Scopes DFAReportingDynamicFeedsGet =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingDynamicFeedsGet{..}
          = go dynamicFeedId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DFAReportingDynamicFeedsGetResource)
                      Core.mempty

