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
-- Module      : Gogol.CloudKMS.Projects.GetAutokeyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the AutokeyConfig for a folder or project.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.getAutokeyConfig@.
module Gogol.CloudKMS.Projects.GetAutokeyConfig
    (
    -- * Resource
      CloudKMSProjectsGetAutokeyConfigResource

    -- ** Constructing a Request
    , CloudKMSProjectsGetAutokeyConfig (..)
    , newCloudKMSProjectsGetAutokeyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.getAutokeyConfig@ method which the
-- 'CloudKMSProjectsGetAutokeyConfig' request conforms to.
type CloudKMSProjectsGetAutokeyConfigResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AutokeyConfig

-- | Returns the AutokeyConfig for a folder or project.
--
-- /See:/ 'newCloudKMSProjectsGetAutokeyConfig' smart constructor.
data CloudKMSProjectsGetAutokeyConfig = CloudKMSProjectsGetAutokeyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@ or @projects\/{PROJECT_NUMBER}\/autokeyConfig@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsGetAutokeyConfig' with the minimum fields required to make a request.
newCloudKMSProjectsGetAutokeyConfig 
    :: 
                                    Core.Text
       -- ^  Required. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@ or @projects\/{PROJECT_NUMBER}\/autokeyConfig@. See 'name'.
    -> CloudKMSProjectsGetAutokeyConfig
newCloudKMSProjectsGetAutokeyConfig name
  = CloudKMSProjectsGetAutokeyConfig{xgafv = Core.Nothing,
                                     accessToken = Core.Nothing, callback = Core.Nothing,
                                     name = name, uploadType = Core.Nothing,
                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest CloudKMSProjectsGetAutokeyConfig where
        type Rs CloudKMSProjectsGetAutokeyConfig = AutokeyConfig
        type Scopes CloudKMSProjectsGetAutokeyConfig =
             '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient CloudKMSProjectsGetAutokeyConfig{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy CloudKMSProjectsGetAutokeyConfigResource)
                      Core.mempty

