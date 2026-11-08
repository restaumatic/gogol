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
-- Module      : Gogol.MyBusinessPlaceActions.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessPlaceActions.Types
    (
    -- * Configuration
      myBusinessPlaceActionsService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ListPlaceActionLinksResponse
    , ListPlaceActionLinksResponse (..)
    , newListPlaceActionLinksResponse

    -- ** ListPlaceActionTypeMetadataResponse
    , ListPlaceActionTypeMetadataResponse (..)
    , newListPlaceActionTypeMetadataResponse

    -- ** PlaceActionLink
    , PlaceActionLink (..)
    , newPlaceActionLink

    -- ** PlaceActionLink_PlaceActionType
    , PlaceActionLink_PlaceActionType (..)

    -- ** PlaceActionLink_ProviderType
    , PlaceActionLink_ProviderType (..)

    -- ** PlaceActionTypeMetadata
    , PlaceActionTypeMetadata (..)
    , newPlaceActionTypeMetadata

    -- ** PlaceActionTypeMetadata_PlaceActionType
    , PlaceActionTypeMetadata_PlaceActionType (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Internal.Product
import Gogol.MyBusinessPlaceActions.Internal.Sum

-- | Default request referring to version @v1@ of the My Business Place Actions API. This contains the host and root path used as a starting point for constructing service requests.
myBusinessPlaceActionsService :: Core.ServiceConfig
myBusinessPlaceActionsService
  = Core.defaultService (Core.ServiceId "mybusinessplaceactions:v1")
      "mybusinessplaceactions.googleapis.com"
