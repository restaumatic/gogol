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
-- Module      : Gogol.MyBusinessPlaceActions.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessPlaceActions.Internal.Product
  (

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ListPlaceActionLinksResponse
    ListPlaceActionLinksResponse (..),
    newListPlaceActionLinksResponse,

    -- * ListPlaceActionTypeMetadataResponse
    ListPlaceActionTypeMetadataResponse (..),
    newListPlaceActionTypeMetadataResponse,

    -- * PlaceActionLink
    PlaceActionLink (..),
    newPlaceActionLink,

    -- * PlaceActionTypeMetadata
    PlaceActionTypeMetadata (..),
    newPlaceActionTypeMetadata,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessPlaceActions.Internal.Sum

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty
instance Core.FromJSON Empty where
        parseJSON = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Response message for PlaceActions.ListPlaceActionLinks.
--
-- /See:/ 'newListPlaceActionLinksResponse' smart constructor.
data ListPlaceActionLinksResponse = ListPlaceActionLinksResponse
    {
      -- | If there are more place action links than the requested page size, then this field is populated with a token to fetch the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The returned list of place action links.
    , placeActionLinks :: (Core.Maybe [PlaceActionLink])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPlaceActionLinksResponse' with the minimum fields required to make a request.
newListPlaceActionLinksResponse 
    ::  ListPlaceActionLinksResponse
newListPlaceActionLinksResponse
  = ListPlaceActionLinksResponse{nextPageToken = Core.Nothing,
                                 placeActionLinks = Core.Nothing}
instance Core.FromJSON ListPlaceActionLinksResponse where
        parseJSON
          = Core.withObject "ListPlaceActionLinksResponse"
              (\ o ->
                 ListPlaceActionLinksResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "placeActionLinks"))

instance Core.ToJSON ListPlaceActionLinksResponse where
        toJSON ListPlaceActionLinksResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("placeActionLinks" Core..=) Core.<$> placeActionLinks])


-- | Response message for PlaceActions.ListPlaceActionTypeMetadata.
--
-- /See:/ 'newListPlaceActionTypeMetadataResponse' smart constructor.
data ListPlaceActionTypeMetadataResponse = ListPlaceActionTypeMetadataResponse
    {
      -- | If the number of action types exceeded the requested page size, this field will be populated with a token to fetch the next page on a subsequent call to @placeActionTypeMetadata.list@. If there are no more results, this field will not be present in the response.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A collection of metadata for the available place action types.
    , placeActionTypeMetadata :: (Core.Maybe [PlaceActionTypeMetadata])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPlaceActionTypeMetadataResponse' with the minimum fields required to make a request.
newListPlaceActionTypeMetadataResponse 
    :: 
                                       ListPlaceActionTypeMetadataResponse
newListPlaceActionTypeMetadataResponse
  = ListPlaceActionTypeMetadataResponse{nextPageToken = Core.Nothing,
                                        placeActionTypeMetadata = Core.Nothing}
instance Core.FromJSON ListPlaceActionTypeMetadataResponse where
        parseJSON
          = Core.withObject "ListPlaceActionTypeMetadataResponse"
              (\ o ->
                 ListPlaceActionTypeMetadataResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "placeActionTypeMetadata"))

instance Core.ToJSON ListPlaceActionTypeMetadataResponse where
        toJSON ListPlaceActionTypeMetadataResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("placeActionTypeMetadata" Core..=) Core.<$>
                    placeActionTypeMetadata])


-- | Represents a place action link and its attributes.
--
-- /See:/ 'newPlaceActionLink' smart constructor.
data PlaceActionLink = PlaceActionLink
    {
      -- | Output only. The time when the place action link was created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Indicates whether this link can be edited by the client.
    , isEditable :: (Core.Maybe Core.Bool)
      -- | Optional. Whether this link is preferred by the merchant. Only one link can be marked as preferred per place action type at a location. If a future request marks a different link as preferred for the same place action type, then the current preferred link (if any exists) will lose its preference.
    , isPreferred :: (Core.Maybe Core.Bool)
      -- | Optional. The resource name, in the format @locations\/{location_id}\/placeActionLinks\/{place_action_link_id}@. The name field will only be considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for updating and deleting links respectively. However, it will be ignored in CreatePlaceActionLink request, where @place_action_link_id@ will be assigned by the server on successful creation of a new link and returned as part of the response.
    , name :: (Core.Maybe Core.Text)
      -- | Required. The type of place action that can be performed using this link.
    , placeActionType :: (Core.Maybe PlaceActionLink_PlaceActionType)
      -- | Output only. Specifies the provider type.
    , providerType :: (Core.Maybe PlaceActionLink_ProviderType)
      -- | Output only. The time when the place action link was last modified.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Required. The link uri. The same uri can be reused for different action types across different locations. However, only one place action link is allowed for each unique combination of (uri, place action type, location).
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaceActionLink' with the minimum fields required to make a request.
newPlaceActionLink 
    ::  PlaceActionLink
newPlaceActionLink
  = PlaceActionLink{createTime = Core.Nothing,
                    isEditable = Core.Nothing, isPreferred = Core.Nothing,
                    name = Core.Nothing, placeActionType = Core.Nothing,
                    providerType = Core.Nothing, updateTime = Core.Nothing,
                    uri = Core.Nothing}
instance Core.FromJSON PlaceActionLink where
        parseJSON
          = Core.withObject "PlaceActionLink"
              (\ o ->
                 PlaceActionLink Core.<$>
                   (o Core..:? "createTime") Core.<*> (o Core..:? "isEditable")
                     Core.<*> (o Core..:? "isPreferred")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "placeActionType")
                     Core.<*> (o Core..:? "providerType")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON PlaceActionLink where
        toJSON PlaceActionLink{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("isEditable" Core..=) Core.<$> isEditable,
                  ("isPreferred" Core..=) Core.<$> isPreferred,
                  ("name" Core..=) Core.<$> name,
                  ("placeActionType" Core..=) Core.<$> placeActionType,
                  ("providerType" Core..=) Core.<$> providerType,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("uri" Core..=) Core.<$> uri])


-- | Metadata for supported place action types.
--
-- /See:/ 'newPlaceActionTypeMetadata' smart constructor.
data PlaceActionTypeMetadata = PlaceActionTypeMetadata
    {
      -- | The localized display name for the attribute, if available; otherwise, the English display name.
      displayName :: (Core.Maybe Core.Text)
      -- | The place action type.
    , placeActionType :: (Core.Maybe PlaceActionTypeMetadata_PlaceActionType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaceActionTypeMetadata' with the minimum fields required to make a request.
newPlaceActionTypeMetadata 
    ::  PlaceActionTypeMetadata
newPlaceActionTypeMetadata
  = PlaceActionTypeMetadata{displayName = Core.Nothing,
                            placeActionType = Core.Nothing}
instance Core.FromJSON PlaceActionTypeMetadata where
        parseJSON
          = Core.withObject "PlaceActionTypeMetadata"
              (\ o ->
                 PlaceActionTypeMetadata Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "placeActionType"))

instance Core.ToJSON PlaceActionTypeMetadata where
        toJSON PlaceActionTypeMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("placeActionType" Core..=) Core.<$> placeActionType])

