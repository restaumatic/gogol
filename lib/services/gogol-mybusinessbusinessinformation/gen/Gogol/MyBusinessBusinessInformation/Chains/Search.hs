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
-- Module      : Gogol.MyBusinessBusinessInformation.Chains.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the chain based on chain name.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.chains.search@.
module Gogol.MyBusinessBusinessInformation.Chains.Search
    (
    -- * Resource
      MyBusinessBusinessInformationChainsSearchResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationChainsSearch (..)
    , newMyBusinessBusinessInformationChainsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.chains.search@ method which the
-- 'MyBusinessBusinessInformationChainsSearch' request conforms to.
type MyBusinessBusinessInformationChainsSearchResource =
     "v1" Core.:>
       "chains:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "chainName" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] SearchChainsResponse

-- | Searches the chain based on chain name.
--
-- /See:/ 'newMyBusinessBusinessInformationChainsSearch' smart constructor.
data MyBusinessBusinessInformationChainsSearch = MyBusinessBusinessInformationChainsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Search for a chain by its name. Exact\/partial\/fuzzy\/related queries are supported. Examples: \"walmart\", \"wal-mart\", \"walmmmart\", \"沃尔玛\"
    , chainName :: (Core.Maybe Core.Text)
      -- | The maximum number of matched chains to return from this query. The default is 10. The maximum possible value is 500.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationChainsSearch' with the minimum fields required to make a request.
newMyBusinessBusinessInformationChainsSearch 
    :: 
                                             MyBusinessBusinessInformationChainsSearch
newMyBusinessBusinessInformationChainsSearch
  = MyBusinessBusinessInformationChainsSearch{xgafv = Core.Nothing,
                                              accessToken = Core.Nothing, callback = Core.Nothing,
                                              chainName = Core.Nothing, pageSize = Core.Nothing,
                                              uploadType = Core.Nothing,
                                              uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationChainsSearch
         where
        type Rs MyBusinessBusinessInformationChainsSearch =
             SearchChainsResponse
        type Scopes MyBusinessBusinessInformationChainsSearch = '[]
        requestClient MyBusinessBusinessInformationChainsSearch{..}
          = go xgafv accessToken callback chainName pageSize uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationChainsSearchResource)
                      Core.mempty

