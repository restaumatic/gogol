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
-- Module      : Gogol.MyBusinessAccountManagement.Accounts.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified business account. Personal accounts cannot be updated using this method.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Account Management API Reference> for @mybusinessaccountmanagement.accounts.patch@.
module Gogol.MyBusinessAccountManagement.Accounts.Patch
    (
    -- * Resource
      MyBusinessAccountManagementAccountsPatchResource

    -- ** Constructing a Request
    , MyBusinessAccountManagementAccountsPatch (..)
    , newMyBusinessAccountManagementAccountsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Types

-- | A resource alias for @mybusinessaccountmanagement.accounts.patch@ method which the
-- 'MyBusinessAccountManagementAccountsPatch' request conforms to.
type MyBusinessAccountManagementAccountsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "validateOnly" Core.Bool Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Account Core.:>
                           Core.Patch '[Core.JSON] Account

-- | Updates the specified business account. Personal accounts cannot be updated using this method.
--
-- /See:/ 'newMyBusinessAccountManagementAccountsPatch' smart constructor.
data MyBusinessAccountManagementAccountsPatch = MyBusinessAccountManagementAccountsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable. The resource name, in the format @accounts\/{account_id}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Account
      -- | Required. The specific fields that should be updated. The only editable field is @accountName@.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. If true, the request is validated without actually updating the account.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessAccountManagementAccountsPatch' with the minimum fields required to make a request.
newMyBusinessAccountManagementAccountsPatch 
    :: 
                                            Core.Text
       -- ^  Immutable. The resource name, in the format @accounts\/{account_id}@. See 'name'.
    -> Account
       -- ^  Multipart request metadata. See 'payload'.
    -> MyBusinessAccountManagementAccountsPatch
newMyBusinessAccountManagementAccountsPatch name payload
  = MyBusinessAccountManagementAccountsPatch{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             name = name, payload = payload,
                                             updateMask = Core.Nothing, uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing,
                                             validateOnly = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessAccountManagementAccountsPatch
         where
        type Rs MyBusinessAccountManagementAccountsPatch = Account
        type Scopes MyBusinessAccountManagementAccountsPatch = '[]
        requestClient MyBusinessAccountManagementAccountsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              myBusinessAccountManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MyBusinessAccountManagementAccountsPatchResource)
                      Core.mempty

