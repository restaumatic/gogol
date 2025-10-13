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
-- Module      : Gogol.MyBusinessBusinessInformation.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessBusinessInformation.Types
    (
    -- * Configuration
      myBusinessBusinessInformationService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdWordsLocationExtensions
    , AdWordsLocationExtensions (..)
    , newAdWordsLocationExtensions

    -- ** Attribute
    , Attribute (..)
    , newAttribute

    -- ** Attribute_ValueType
    , Attribute_ValueType (..)

    -- ** AttributeMetadata
    , AttributeMetadata (..)
    , newAttributeMetadata

    -- ** AttributeMetadata_ValueType
    , AttributeMetadata_ValueType (..)

    -- ** AttributeValueMetadata
    , AttributeValueMetadata (..)
    , newAttributeValueMetadata

    -- ** Attributes
    , Attributes (..)
    , newAttributes

    -- ** BatchGetCategoriesResponse
    , BatchGetCategoriesResponse (..)
    , newBatchGetCategoriesResponse

    -- ** BusinessHours
    , BusinessHours (..)
    , newBusinessHours

    -- ** Categories
    , Categories (..)
    , newCategories

    -- ** Category
    , Category (..)
    , newCategory

    -- ** Chain
    , Chain (..)
    , newChain

    -- ** ChainName
    , ChainName (..)
    , newChainName

    -- ** ChainUri
    , ChainUri (..)
    , newChainUri

    -- ** Date
    , Date (..)
    , newDate

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FreeFormServiceItem
    , FreeFormServiceItem (..)
    , newFreeFormServiceItem

    -- ** GoogleLocation
    , GoogleLocation (..)
    , newGoogleLocation

    -- ** GoogleUpdatedLocation
    , GoogleUpdatedLocation (..)
    , newGoogleUpdatedLocation

    -- ** Label
    , Label (..)
    , newLabel

    -- ** LatLng
    , LatLng (..)
    , newLatLng

    -- ** ListAttributeMetadataResponse
    , ListAttributeMetadataResponse (..)
    , newListAttributeMetadataResponse

    -- ** ListCategoriesResponse
    , ListCategoriesResponse (..)
    , newListCategoriesResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Metadata
    , Metadata (..)
    , newMetadata

    -- ** Money
    , Money (..)
    , newMoney

    -- ** MoreHours
    , MoreHours (..)
    , newMoreHours

    -- ** MoreHoursType
    , MoreHoursType (..)
    , newMoreHoursType

    -- ** OpenInfo
    , OpenInfo (..)
    , newOpenInfo

    -- ** OpenInfo_Status
    , OpenInfo_Status (..)

    -- ** PhoneNumbers
    , PhoneNumbers (..)
    , newPhoneNumbers

    -- ** PlaceInfo
    , PlaceInfo (..)
    , newPlaceInfo

    -- ** Places
    , Places (..)
    , newPlaces

    -- ** PostalAddress
    , PostalAddress (..)
    , newPostalAddress

    -- ** Profile
    , Profile (..)
    , newProfile

    -- ** RelationshipData
    , RelationshipData (..)
    , newRelationshipData

    -- ** RelevantLocation
    , RelevantLocation (..)
    , newRelevantLocation

    -- ** RelevantLocation_RelationType
    , RelevantLocation_RelationType (..)

    -- ** RepeatedEnumAttributeValue
    , RepeatedEnumAttributeValue (..)
    , newRepeatedEnumAttributeValue

    -- ** SearchChainsResponse
    , SearchChainsResponse (..)
    , newSearchChainsResponse

    -- ** SearchGoogleLocationsRequest
    , SearchGoogleLocationsRequest (..)
    , newSearchGoogleLocationsRequest

    -- ** SearchGoogleLocationsResponse
    , SearchGoogleLocationsResponse (..)
    , newSearchGoogleLocationsResponse

    -- ** ServiceAreaBusiness
    , ServiceAreaBusiness (..)
    , newServiceAreaBusiness

    -- ** ServiceAreaBusiness_BusinessType
    , ServiceAreaBusiness_BusinessType (..)

    -- ** ServiceItem
    , ServiceItem (..)
    , newServiceItem

    -- ** ServiceType
    , ServiceType (..)
    , newServiceType

    -- ** SpecialHourPeriod
    , SpecialHourPeriod (..)
    , newSpecialHourPeriod

    -- ** SpecialHours
    , SpecialHours (..)
    , newSpecialHours

    -- ** StructuredServiceItem
    , StructuredServiceItem (..)
    , newStructuredServiceItem

    -- ** TimeOfDay'
    , TimeOfDay' (..)
    , newTimeOfDay

    -- ** TimePeriod
    , TimePeriod (..)
    , newTimePeriod

    -- ** TimePeriod_CloseDay
    , TimePeriod_CloseDay (..)

    -- ** TimePeriod_OpenDay
    , TimePeriod_OpenDay (..)

    -- ** UriAttributeValue
    , UriAttributeValue (..)
    , newUriAttributeValue

    -- ** CategoriesBatchGetView
    , CategoriesBatchGetView (..)

    -- ** CategoriesListView
    , CategoriesListView (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Internal.Product
import Gogol.MyBusinessBusinessInformation.Internal.Sum

-- | Default request referring to version @v1@ of the My Business Business Information API. This contains the host and root path used as a starting point for constructing service requests.
myBusinessBusinessInformationService :: Core.ServiceConfig
myBusinessBusinessInformationService
  = Core.defaultService
      (Core.ServiceId "mybusinessbusinessinformation:v1")
      "mybusinessbusinessinformation.googleapis.com"
