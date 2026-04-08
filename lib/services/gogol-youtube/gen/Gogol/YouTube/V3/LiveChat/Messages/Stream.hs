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
-- Module      : Gogol.YouTube.V3.LiveChat.Messages.Stream
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows a user to load live chat through a server-streamed RPC.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.youtube.v3.liveChat.messages.stream@.
module Gogol.YouTube.V3.LiveChat.Messages.Stream
    (
    -- * Resource
      YouTubeYoutubeV3LiveChatMessagesStreamResource

    -- ** Constructing a Request
    , YouTubeYoutubeV3LiveChatMessagesStream (..)
    , newYouTubeYoutubeV3LiveChatMessagesStream
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.youtube.v3.liveChat.messages.stream@ method which the
-- 'YouTubeYoutubeV3LiveChatMessagesStream' request conforms to.
type YouTubeYoutubeV3LiveChatMessagesStreamResource =
     "youtube" Core.:>
       "v3" Core.:>
         "liveChat" Core.:>
           "messages" Core.:>
             "stream" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "hl" Core.Text Core.:>
                       Core.QueryParam "liveChatId" Core.Text Core.:>
                         Core.QueryParam "maxResults" Core.Word32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParams "part" Core.Text Core.:>
                               Core.QueryParam "profileImageSize" Core.Word32 Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] LiveChatMessageListResponse

-- | Allows a user to load live chat through a server-streamed RPC.
--
-- /See:/ 'newYouTubeYoutubeV3LiveChatMessagesStream' smart constructor.
data YouTubeYoutubeV3LiveChatMessagesStream = YouTubeYoutubeV3LiveChatMessagesStream
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Specifies the localization language in which the system messages should be returned.
    , hl :: (Core.Maybe Core.Text)
      -- | The id of the live chat for which comments should be returned.
    , liveChatId :: (Core.Maybe Core.Text)
      -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set. Not used in the streaming RPC.
    , maxResults :: Core.Word32
      -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identify other pages that could be retrieved.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The /part/ parameter specifies the liveChatComment resource parts that the API response will include. Supported values are id, snippet, and authorDetails.
    , part :: (Core.Maybe [Core.Text])
      -- | Specifies the size of the profile image that should be returned for each user.
    , profileImageSize :: (Core.Maybe Core.Word32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeYoutubeV3LiveChatMessagesStream' with the minimum fields required to make a request.
newYouTubeYoutubeV3LiveChatMessagesStream 
    :: 
                                          YouTubeYoutubeV3LiveChatMessagesStream
newYouTubeYoutubeV3LiveChatMessagesStream
  = YouTubeYoutubeV3LiveChatMessagesStream{xgafv = Core.Nothing,
                                           accessToken = Core.Nothing, callback = Core.Nothing,
                                           hl = Core.Nothing, liveChatId = Core.Nothing,
                                           maxResults = 500, pageToken = Core.Nothing,
                                           part = Core.Nothing, profileImageSize = Core.Nothing,
                                           uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest YouTubeYoutubeV3LiveChatMessagesStream
         where
        type Rs YouTubeYoutubeV3LiveChatMessagesStream =
             LiveChatMessageListResponse
        type Scopes YouTubeYoutubeV3LiveChatMessagesStream =
             '[Youtube'FullControl, Youtube'ForceSsl, Youtube'Readonly]
        requestClient YouTubeYoutubeV3LiveChatMessagesStream{..}
          = go xgafv accessToken callback hl liveChatId
              (Core.Just maxResults)
              pageToken
              (part Core.^. Core._Default)
              profileImageSize
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeYoutubeV3LiveChatMessagesStreamResource)
                      Core.mempty

