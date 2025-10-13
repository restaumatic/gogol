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
-- Module      : Gogol.MyBusinessBusinessInformation.Chains.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified chain. Returns @NOT_FOUND@ if the chain does not exist.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.chains.get@.
module Gogol.MyBusinessBusinessInformation.Chains.Get
    (
    -- * Resource
      MyBusinessBusinessInformationChainsGetResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationChainsGet (..)
    , newMyBusinessBusinessInformationChainsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.chains.get@ method which the
-- 'MyBusinessBusinessInformationChainsGet' request conforms to.
type MyBusinessBusinessInformationChainsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Chain

-- | Gets the specified chain. Returns @NOT_FOUND@ if the chain does not exist.
--
-- /See:/ 'newMyBusinessBusinessInformationChainsGet' smart constructor.
data MyBusinessBusinessInformationChainsGet = MyBusinessBusinessInformationChainsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The chain\'s resource name, in the format @chains\/{chain_place_id}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationChainsGet' with the minimum fields required to make a request.
newMyBusinessBusinessInformationChainsGet 
    :: 
                                          Core.Text
       -- ^  Required. The chain\'s resource name, in the format @chains\/{chain_place_id}@. See 'name'.
    -> MyBusinessBusinessInformationChainsGet
newMyBusinessBusinessInformationChainsGet name
  = MyBusinessBusinessInformationChainsGet{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           name = name, uploadType = Core.Nothing,
                                           uploadProtocol = Core.Nothing}
instance Core.GoogleRequest MyBusinessBusinessInformationChainsGet
         where
        type Rs MyBusinessBusinessInformationChainsGet = Chain
        type Scopes MyBusinessBusinessInformationChainsGet = '[]
        requestClient MyBusinessBusinessInformationChainsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessBusinessInformationChainsGetResource)
                      Core.mempty

