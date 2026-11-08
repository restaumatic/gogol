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
-- Module      : Gogol.MyBusinessAccountManagement.Locations.Transfer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a location from an account that the user owns to another account that the same user administers. The user must be an owner of the account the location is currently associated with and must also be at least a manager of the destination account.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.locations.transfer@.
module Gogol.MyBusinessAccountManagement.Locations.Transfer
    (
    -- * Resource
      MyBusinessAccountManagementLocationsTransferResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementLocationsTransfer (..)
    , newMyBusinessAccountManagementLocationsTransfer
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.locations.transfer@ method which the
-- 'MyBusinessAccountManagementLocationsTransfer' request conforms to.
type MyBusinessAccountManagementLocationsTransferResource =
     "v1" Core.:>
       Core.CaptureMode "name" "transfer" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TransferLocationRequest Core.:>
                       Core.Post '[Core.JSON] Empty

-- | Moves a location from an account that the user owns to another account that the same user administers. The user must be an owner of the account the location is currently associated with and must also be at least a manager of the destination account.
--
-- /See:/ 'newMyBusinessAccountManagementLocationsTransfer' smart constructor.
data MyBusinessAccountManagementLocationsTransfer = MyBusinessAccountManagementLocationsTransfer
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the location to transfer. @locations\/{location_id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: TransferLocationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementLocationsTransfer' with the minimum fields required to make a request.
newMyBusinessAccountManagementLocationsTransfer 
    :: 
                                                Core.Text
       -- ^  Required. The name of the location to transfer. @locations\/{location_id}@. See 'name'.
    -> TransferLocationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementLocationsTransfer
newMyBusinessAccountManagementLocationsTransfer name payload
  = MyBusinessAccountManagementLocationsTransfer{xgafv =
                                                   Core.Nothing,
                                                 accessToken = Core.Nothing,
                                                 callback = Core.Nothing, name = name,
                                                 payload = payload, uploadType = Core.Nothing,
                                                 uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementLocationsTransfer
         where
        type Rs MyBusinessAccountManagementLocationsTransfer = Empty
        type Scopes MyBusinessAccountManagementLocationsTransfer = '[]
        requestClient MyBusinessAccountManagementLocationsTransfer{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementLocationsTransferResource)
                      Core.mempty

