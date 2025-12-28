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
-- Module      : Gogol.MyBusinessPlaceActions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The My Business Place Actions API provides an interface for managing place action links of a location on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Place Actions API Reference>
module Gogol.MyBusinessPlaceActions
    (
    -- * Configuration
      myBusinessPlaceActionsService

    -- * Resources

    -- ** mybusinessplaceactions.locations.placeActionLinks.create
    , MyBusinessPlaceActionsLocationsPlaceActionLinksCreateResource
    , MyBusinessPlaceActionsLocationsPlaceActionLinksCreate (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksCreate

    -- ** mybusinessplaceactions.locations.placeActionLinks.delete
    , MyBusinessPlaceActionsLocationsPlaceActionLinksDeleteResource
    , MyBusinessPlaceActionsLocationsPlaceActionLinksDelete (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksDelete

    -- ** mybusinessplaceactions.locations.placeActionLinks.get
    , MyBusinessPlaceActionsLocationsPlaceActionLinksGetResource
    , MyBusinessPlaceActionsLocationsPlaceActionLinksGet (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksGet

    -- ** mybusinessplaceactions.locations.placeActionLinks.list
    , MyBusinessPlaceActionsLocationsPlaceActionLinksListResource
    , MyBusinessPlaceActionsLocationsPlaceActionLinksList (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksList

    -- ** mybusinessplaceactions.locations.placeActionLinks.patch
    , MyBusinessPlaceActionsLocationsPlaceActionLinksPatchResource
    , MyBusinessPlaceActionsLocationsPlaceActionLinksPatch (..)
    , newMyBusinessPlaceActionsLocationsPlaceActionLinksPatch

    -- ** mybusinessplaceactions.placeActionTypeMetadata.list
    , MyBusinessPlaceActionsPlaceActionTypeMetadataListResource
    , MyBusinessPlaceActionsPlaceActionTypeMetadataList (..)
    , newMyBusinessPlaceActionsPlaceActionTypeMetadataList

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

import Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Create
import Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Delete
import Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Get
import Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.List
import Gogol.MyBusinessPlaceActions.Locations.PlaceActionLinks.Patch
import Gogol.MyBusinessPlaceActions.PlaceActionTypeMetadata.List
import Gogol.MyBusinessPlaceActions.Types
