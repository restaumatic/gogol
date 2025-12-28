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
-- Module      : Gogol.MyBusinessPlaceActions.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessPlaceActions.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * PlaceActionLink_PlaceActionType
    PlaceActionLink_PlaceActionType
      (
        PlaceActionLink_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED,
        PlaceActionLink_PlaceActionType_Appointment,
        PlaceActionLink_PlaceActionType_ONLINEAPPOINTMENT,
        PlaceActionLink_PlaceActionType_DININGRESERVATION,
        PlaceActionLink_PlaceActionType_FOODORDERING,
        PlaceActionLink_PlaceActionType_FOODDELIVERY,
        PlaceActionLink_PlaceActionType_FOODTAKEOUT,
        PlaceActionLink_PlaceActionType_SHOPONLINE,
        ..
      ),

    -- * PlaceActionLink_ProviderType
    PlaceActionLink_ProviderType
      (
        PlaceActionLink_ProviderType_PROVIDERTYPEUNSPECIFIED,
        PlaceActionLink_ProviderType_Merchant,
        PlaceActionLink_ProviderType_AGGREGATOR3P,
        ..
      ),

    -- * PlaceActionTypeMetadata_PlaceActionType
    PlaceActionTypeMetadata_PlaceActionType
      (
        PlaceActionTypeMetadata_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED,
        PlaceActionTypeMetadata_PlaceActionType_Appointment,
        PlaceActionTypeMetadata_PlaceActionType_ONLINEAPPOINTMENT,
        PlaceActionTypeMetadata_PlaceActionType_DININGRESERVATION,
        PlaceActionTypeMetadata_PlaceActionType_FOODORDERING,
        PlaceActionTypeMetadata_PlaceActionType_FOODDELIVERY,
        PlaceActionTypeMetadata_PlaceActionType_FOODTAKEOUT,
        PlaceActionTypeMetadata_PlaceActionType_SHOPONLINE,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Required. The type of place action that can be performed using this link.
newtype PlaceActionLink_PlaceActionType = PlaceActionLink_PlaceActionType { fromPlaceActionLink_PlaceActionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern PlaceActionLink_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED = PlaceActionLink_PlaceActionType "PLACE_ACTION_TYPE_UNSPECIFIED"

-- | The action type is booking an appointment.
pattern PlaceActionLink_PlaceActionType_Appointment :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_Appointment = PlaceActionLink_PlaceActionType "APPOINTMENT"

-- | The action type is booking an online appointment.
pattern PlaceActionLink_PlaceActionType_ONLINEAPPOINTMENT :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_ONLINEAPPOINTMENT = PlaceActionLink_PlaceActionType "ONLINE_APPOINTMENT"

-- | The action type is making a dining reservation.
pattern PlaceActionLink_PlaceActionType_DININGRESERVATION :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_DININGRESERVATION = PlaceActionLink_PlaceActionType "DINING_RESERVATION"

-- | The action type is ordering food for delivery and\/or takeout.
pattern PlaceActionLink_PlaceActionType_FOODORDERING :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_FOODORDERING = PlaceActionLink_PlaceActionType "FOOD_ORDERING"

-- | The action type is ordering food for delivery.
pattern PlaceActionLink_PlaceActionType_FOODDELIVERY :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_FOODDELIVERY = PlaceActionLink_PlaceActionType "FOOD_DELIVERY"

-- | The action type is ordering food for takeout.
pattern PlaceActionLink_PlaceActionType_FOODTAKEOUT :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_FOODTAKEOUT = PlaceActionLink_PlaceActionType "FOOD_TAKEOUT"

-- | The action type is shopping, that can be delivery and\/or pickup.
pattern PlaceActionLink_PlaceActionType_SHOPONLINE :: PlaceActionLink_PlaceActionType
pattern PlaceActionLink_PlaceActionType_SHOPONLINE = PlaceActionLink_PlaceActionType "SHOP_ONLINE"

{-# COMPLETE
  PlaceActionLink_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED,
  PlaceActionLink_PlaceActionType_Appointment,
  PlaceActionLink_PlaceActionType_ONLINEAPPOINTMENT,
  PlaceActionLink_PlaceActionType_DININGRESERVATION,
  PlaceActionLink_PlaceActionType_FOODORDERING,
  PlaceActionLink_PlaceActionType_FOODDELIVERY,
  PlaceActionLink_PlaceActionType_FOODTAKEOUT,
  PlaceActionLink_PlaceActionType_SHOPONLINE,
  PlaceActionLink_PlaceActionType #-}

-- | Output only. Specifies the provider type.
newtype PlaceActionLink_ProviderType = PlaceActionLink_ProviderType { fromPlaceActionLink_ProviderType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern PlaceActionLink_ProviderType_PROVIDERTYPEUNSPECIFIED :: PlaceActionLink_ProviderType
pattern PlaceActionLink_ProviderType_PROVIDERTYPEUNSPECIFIED = PlaceActionLink_ProviderType "PROVIDER_TYPE_UNSPECIFIED"

-- | A 1P provider such as a merchant, or an agency on behalf of a merchant.
pattern PlaceActionLink_ProviderType_Merchant :: PlaceActionLink_ProviderType
pattern PlaceActionLink_ProviderType_Merchant = PlaceActionLink_ProviderType "MERCHANT"

-- | A 3P aggregator, such as a @Reserve with Google@ partner.
pattern PlaceActionLink_ProviderType_AGGREGATOR3P :: PlaceActionLink_ProviderType
pattern PlaceActionLink_ProviderType_AGGREGATOR3P = PlaceActionLink_ProviderType "AGGREGATOR_3P"

{-# COMPLETE
  PlaceActionLink_ProviderType_PROVIDERTYPEUNSPECIFIED,
  PlaceActionLink_ProviderType_Merchant,
  PlaceActionLink_ProviderType_AGGREGATOR3P,
  PlaceActionLink_ProviderType #-}

-- | The place action type.
newtype PlaceActionTypeMetadata_PlaceActionType = PlaceActionTypeMetadata_PlaceActionType { fromPlaceActionTypeMetadata_PlaceActionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern PlaceActionTypeMetadata_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED = PlaceActionTypeMetadata_PlaceActionType "PLACE_ACTION_TYPE_UNSPECIFIED"

-- | The action type is booking an appointment.
pattern PlaceActionTypeMetadata_PlaceActionType_Appointment :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_Appointment = PlaceActionTypeMetadata_PlaceActionType "APPOINTMENT"

-- | The action type is booking an online appointment.
pattern PlaceActionTypeMetadata_PlaceActionType_ONLINEAPPOINTMENT :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_ONLINEAPPOINTMENT = PlaceActionTypeMetadata_PlaceActionType "ONLINE_APPOINTMENT"

-- | The action type is making a dining reservation.
pattern PlaceActionTypeMetadata_PlaceActionType_DININGRESERVATION :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_DININGRESERVATION = PlaceActionTypeMetadata_PlaceActionType "DINING_RESERVATION"

-- | The action type is ordering food for delivery and\/or takeout.
pattern PlaceActionTypeMetadata_PlaceActionType_FOODORDERING :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_FOODORDERING = PlaceActionTypeMetadata_PlaceActionType "FOOD_ORDERING"

-- | The action type is ordering food for delivery.
pattern PlaceActionTypeMetadata_PlaceActionType_FOODDELIVERY :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_FOODDELIVERY = PlaceActionTypeMetadata_PlaceActionType "FOOD_DELIVERY"

-- | The action type is ordering food for takeout.
pattern PlaceActionTypeMetadata_PlaceActionType_FOODTAKEOUT :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_FOODTAKEOUT = PlaceActionTypeMetadata_PlaceActionType "FOOD_TAKEOUT"

-- | The action type is shopping, that can be delivery and\/or pickup.
pattern PlaceActionTypeMetadata_PlaceActionType_SHOPONLINE :: PlaceActionTypeMetadata_PlaceActionType
pattern PlaceActionTypeMetadata_PlaceActionType_SHOPONLINE = PlaceActionTypeMetadata_PlaceActionType "SHOP_ONLINE"

{-# COMPLETE
  PlaceActionTypeMetadata_PlaceActionType_PLACEACTIONTYPEUNSPECIFIED,
  PlaceActionTypeMetadata_PlaceActionType_Appointment,
  PlaceActionTypeMetadata_PlaceActionType_ONLINEAPPOINTMENT,
  PlaceActionTypeMetadata_PlaceActionType_DININGRESERVATION,
  PlaceActionTypeMetadata_PlaceActionType_FOODORDERING,
  PlaceActionTypeMetadata_PlaceActionType_FOODDELIVERY,
  PlaceActionTypeMetadata_PlaceActionType_FOODTAKEOUT,
  PlaceActionTypeMetadata_PlaceActionType_SHOPONLINE,
  PlaceActionTypeMetadata_PlaceActionType #-}
