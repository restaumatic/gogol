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
-- Module      : Gogol.FireStore.Projects.Databases.Clone
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new database by cloning an existing one. The new database must be in the same cloud region or multi-region location as the existing database. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing database. The long-running operation can be used to track the progress of the clone, with the Operation\'s metadata field type being the CloneDatabaseMetadata. The response type is the Database if the clone was successful. The new database is not readable or writeable until the LRO has completed.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.clone@.
module Gogol.FireStore.Projects.Databases.Clone
    (
    -- * Resource
      FireStoreProjectsDatabasesCloneResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesClone (..)
    , newFireStoreProjectsDatabasesClone
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.clone@ method which the
-- 'FireStoreProjectsDatabasesClone' request conforms to.
type FireStoreProjectsDatabasesCloneResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "databases:clone" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleFirestoreAdminV1CloneDatabaseRequest
                         Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a new database by cloning an existing one. The new database must be in the same cloud region or multi-region location as the existing database. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing database. The long-running operation can be used to track the progress of the clone, with the Operation\'s metadata field type being the CloneDatabaseMetadata. The response type is the Database if the clone was successful. The new database is not readable or writeable until the LRO has completed.
--
-- /See:/ 'newFireStoreProjectsDatabasesClone' smart constructor.
data FireStoreProjectsDatabasesClone = FireStoreProjectsDatabasesClone
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The project to clone the database in. Format is @projects\/{project_id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleFirestoreAdminV1CloneDatabaseRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesClone' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesClone 
    :: 
                                   Core.Text
       -- ^  Required. The project to clone the database in. Format is @projects\/{project_id}@. See 'parent'.
    -> GoogleFirestoreAdminV1CloneDatabaseRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesClone
newFireStoreProjectsDatabasesClone parent payload
  = FireStoreProjectsDatabasesClone{xgafv = Core.Nothing,
                                    accessToken = Core.Nothing, callback = Core.Nothing,
                                    parent = parent, payload = payload, uploadType = Core.Nothing,
                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest FireStoreProjectsDatabasesClone where
        type Rs FireStoreProjectsDatabasesClone =
             GoogleLongrunningOperation
        type Scopes FireStoreProjectsDatabasesClone =
             '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient FireStoreProjectsDatabasesClone{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy FireStoreProjectsDatabasesCloneResource)
                      Core.mempty

