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
-- Module      : Gogol.MyBusinessVerifications.Locations.Verifications.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List verifications of a location, ordered by create time.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference> for @mybusinessverifications.locations.verifications.list@.
module Gogol.MyBusinessVerifications.Locations.Verifications.List
    (
    -- * Resource
      MyBusinessVerificationsLocationsVerificationsListResource

    -- ** Constructing a Request
    , MyBusinessVerificationsLocationsVerificationsList (..)
    , newMyBusinessVerificationsLocationsVerificationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Types

-- | A resource alias for @mybusinessverifications.locations.verifications.list@ method which the
-- 'MyBusinessVerificationsLocationsVerificationsList' request conforms to.
type MyBusinessVerificationsLocationsVerificationsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "verifications" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListVerificationsResponse

-- | List verifications of a location, ordered by create time.
--
-- /See:/ 'newMyBusinessVerificationsLocationsVerificationsList' smart constructor.
data MyBusinessVerificationsLocationsVerificationsList = MyBusinessVerificationsLocationsVerificationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | How many verification to include per page. Minimum is 1, and the default and maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | If specified, returns the next page of verifications.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the location that verification requests belong to.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MyBusinessVerificationsLocationsVerificationsList' with the minimum fields required to make a request.
newMyBusinessVerificationsLocationsVerificationsList 
    :: 
                                                     Core.Text
       -- ^  Required. Resource name of the location that verification requests belong to. See 'parent'.
    -> MyBusinessVerificationsLocationsVerificationsList
newMyBusinessVerificationsLocationsVerificationsList parent
  = MyBusinessVerificationsLocationsVerificationsList{xgafv =
                                                        Core.Nothing,
                                                      accessToken = Core.Nothing,
                                                      callback = Core.Nothing,
                                                      pageSize = Core.Nothing,
                                                      pageToken = Core.Nothing, parent = parent,
                                                      uploadType = Core.Nothing,
                                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           MyBusinessVerificationsLocationsVerificationsList
         where
        type Rs MyBusinessVerificationsLocationsVerificationsList =
             ListVerificationsResponse
        type Scopes MyBusinessVerificationsLocationsVerificationsList = '[]
        requestClient MyBusinessVerificationsLocationsVerificationsList{..}
          = go parent xgafv accessToken callback pageSize pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              myBusinessVerificationsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MyBusinessVerificationsLocationsVerificationsListResource)
                      Core.mempty

