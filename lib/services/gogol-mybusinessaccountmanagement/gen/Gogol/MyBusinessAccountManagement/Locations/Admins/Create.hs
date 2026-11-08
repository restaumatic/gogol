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
-- Module      : Gogol.MyBusinessAccountManagement.Locations.Admins.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invites the specified user to become an administrator for the specified location. The invitee must accept the invitation in order to be granted access to the location. See AcceptInvitation to programmatically accept an invitation.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.locations.admins.create@.
module Gogol.MyBusinessAccountManagement.Locations.Admins.Create
    (
    -- * Resource
      MyBusinessAccountManagementLocationsAdminsCreateResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementLocationsAdminsCreate (..)
    , newMyBusinessAccountManagementLocationsAdminsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.locations.admins.create@ method which the
-- 'MyBusinessAccountManagementLocationsAdminsCreate' request conforms to.
type MyBusinessAccountManagementLocationsAdminsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "admins" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Admin Core.:>
                         Core.Post '[Core.JSON] Admin

-- | Invites the specified user to become an administrator for the specified location. The invitee must accept the invitation in order to be granted access to the location. See AcceptInvitation to programmatically accept an invitation.
--
-- /See:/ 'newMyBusinessAccountManagementLocationsAdminsCreate' smart constructor.
data MyBusinessAccountManagementLocationsAdminsCreate = MyBusinessAccountManagementLocationsAdminsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the location this admin is created for. @locations\/{location_id}\/admins@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Admin
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementLocationsAdminsCreate' with the minimum fields required to make a request.
newMyBusinessAccountManagementLocationsAdminsCreate 
    :: 
                                                    Core.Text
       -- ^  Required. The resource name of the location this admin is created for. @locations\/{location_id}\/admins@. See 'parent'.
    -> Admin
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementLocationsAdminsCreate
newMyBusinessAccountManagementLocationsAdminsCreate parent payload
  = MyBusinessAccountManagementLocationsAdminsCreate{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, parent = parent,
                                                     payload = payload, uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementLocationsAdminsCreate
         where
        type Rs MyBusinessAccountManagementLocationsAdminsCreate = Admin
        type Scopes MyBusinessAccountManagementLocationsAdminsCreate = '[]
        requestClient MyBusinessAccountManagementLocationsAdminsCreate{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessAccountManagementLocationsAdminsCreateResource)
                      Core.mempty

