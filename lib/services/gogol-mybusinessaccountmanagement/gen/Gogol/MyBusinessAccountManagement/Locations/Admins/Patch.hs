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
-- Module      : Gogol.MyBusinessAccountManagement.Locations.Admins.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Admin for the specified location. Only the AdminRole of the Admin can be updated.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.locations.admins.patch@.
module Gogol.MyBusinessAccountManagement.Locations.Admins.Patch
    (
    -- * Resource
      MyBusinessAccountManagementLocationsAdminsPatchResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementLocationsAdminsPatch (..)
    , newMyBusinessAccountManagementLocationsAdminsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.locations.admins.patch@ method which the
-- 'MyBusinessAccountManagementLocationsAdminsPatch' request conforms to.
type MyBusinessAccountManagementLocationsAdminsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Admin Core.:>
                         Core.Patch '[Core.JSON] Admin

-- | Updates the Admin for the specified location. Only the AdminRole of the Admin can be updated.
--
-- /See:/ 'newMyBusinessAccountManagementLocationsAdminsPatch' smart constructor.
data MyBusinessAccountManagementLocationsAdminsPatch = MyBusinessAccountManagementLocationsAdminsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable. The resource name. For account admins, this is in the form: @accounts\/{account_id}\/admins\/{admin_id}@ For location admins, this is in the form: @locations\/{location_id}\/admins\/{admin_id}@ This field will be ignored if set during admin creation.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Admin
      -- | Required. The specific fields that should be updated. The only editable field is role.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementLocationsAdminsPatch' with the minimum fields required to make a request.
newMyBusinessAccountManagementLocationsAdminsPatch 
    :: 
                                                   Core.Text
       -- ^  Immutable. The resource name. For account admins, this is in the form: @accounts\/{account_id}\/admins\/{admin_id}@ For location admins, this is in the form: @locations\/{location_id}\/admins\/{admin_id}@ This field will be ignored if set during admin creation. See 'name'.
    -> Admin
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementLocationsAdminsPatch
newMyBusinessAccountManagementLocationsAdminsPatch name payload
  = MyBusinessAccountManagementLocationsAdminsPatch{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing, name = name,
                                                    payload = payload, updateMask = Core.Nothing,
                                                    uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementLocationsAdminsPatch
         where
        type Rs MyBusinessAccountManagementLocationsAdminsPatch = Admin
        type Scopes MyBusinessAccountManagementLocationsAdminsPatch = '[]
        requestClient MyBusinessAccountManagementLocationsAdminsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementLocationsAdminsPatchResource)
                      Core.mempty

