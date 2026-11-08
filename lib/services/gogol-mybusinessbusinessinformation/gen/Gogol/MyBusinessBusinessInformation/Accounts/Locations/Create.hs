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
-- Module      : Gogol.MyBusinessBusinessInformation.Accounts.Locations.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Location that will be owned by the logged in user.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference> for @mybusinessbusinessinformation.accounts.locations.create@.
module Gogol.MyBusinessBusinessInformation.Accounts.Locations.Create
    (
    -- * Resource
      MyBusinessBusinessInformationAccountsLocationsCreateResource

    -- ** Constructing a Request
    , MyBusinessBusinessInformationAccountsLocationsCreate (..)
    , newMyBusinessBusinessInformationAccountsLocationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Types

-- | A resource alias for @mybusinessbusinessinformation.accounts.locations.create@ method which the
-- 'MyBusinessBusinessInformationAccountsLocationsCreate' request conforms to.
type MyBusinessBusinessInformationAccountsLocationsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "locations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "requestId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "validateOnly" Core.Bool Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Location Core.:>
                             Core.Post '[Core.JSON] Location

-- | Creates a new Location that will be owned by the logged in user.
--
-- /See:/ 'newMyBusinessBusinessInformationAccountsLocationsCreate' smart constructor.
data MyBusinessBusinessInformationAccountsLocationsCreate = MyBusinessBusinessInformationAccountsLocationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the account in which to create this location.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Location
      -- | Optional. A unique request ID for the server to detect duplicated requests. We recommend using UUIDs. Max length is 50 characters.
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. If true, the request is validated without actually creating the location.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessBusinessInformationAccountsLocationsCreate' with the minimum fields required to make a request.
newMyBusinessBusinessInformationAccountsLocationsCreate 
    :: 
                                                        Core.Text
       -- ^  Required. The name of the account in which to create this location. See 'parent'.
    -> Location
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessBusinessInformationAccountsLocationsCreate
newMyBusinessBusinessInformationAccountsLocationsCreate parent
  payload
  = MyBusinessBusinessInformationAccountsLocationsCreate{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing, parent = parent,
                                                         payload = payload,
                                                         requestId = Core.Nothing,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing,
                                                         validateOnly = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessBusinessInformationAccountsLocationsCreate
         where
        type Rs MyBusinessBusinessInformationAccountsLocationsCreate =
             Location
        type Scopes MyBusinessBusinessInformationAccountsLocationsCreate =
             '[]
        requestClient
          MyBusinessBusinessInformationAccountsLocationsCreate{..}
          = go parent xgafv accessToken callback requestId uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              myBusinessBusinessInformationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessBusinessInformationAccountsLocationsCreateResource)
                      Core.mempty

