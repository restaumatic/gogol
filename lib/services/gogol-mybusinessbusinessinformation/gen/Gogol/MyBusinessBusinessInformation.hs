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
-- Module      : Gogol.MyBusinessBusinessInformation
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The My Business Business Information API provides an interface for managing business information. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Business Information API Reference>
module Gogol.MyBusinessBusinessInformation
    (
    -- * Configuration
      myBusinessBusinessInformationService

    -- * Resources

    -- ** mybusinessbusinessinformation.accounts.locations.create
    , MyBusinessBusinessInformationAccountsLocationsCreateResource
    , MyBusinessBusinessInformationAccountsLocationsCreate (..)
    , newMyBusinessBusinessInformationAccountsLocationsCreate

    -- ** mybusinessbusinessinformation.accounts.locations.list
    , MyBusinessBusinessInformationAccountsLocationsListResource
    , MyBusinessBusinessInformationAccountsLocationsList (..)
    , newMyBusinessBusinessInformationAccountsLocationsList

    -- ** mybusinessbusinessinformation.attributes.list
    , MyBusinessBusinessInformationAttributesListResource
    , MyBusinessBusinessInformationAttributesList (..)
    , newMyBusinessBusinessInformationAttributesList

    -- ** mybusinessbusinessinformation.categories.batchGet
    , MyBusinessBusinessInformationCategoriesBatchGetResource
    , MyBusinessBusinessInformationCategoriesBatchGet (..)
    , newMyBusinessBusinessInformationCategoriesBatchGet

    -- ** mybusinessbusinessinformation.categories.list
    , MyBusinessBusinessInformationCategoriesListResource
    , MyBusinessBusinessInformationCategoriesList (..)
    , newMyBusinessBusinessInformationCategoriesList

    -- ** mybusinessbusinessinformation.chains.get
    , MyBusinessBusinessInformationChainsGetResource
    , MyBusinessBusinessInformationChainsGet (..)
    , newMyBusinessBusinessInformationChainsGet

    -- ** mybusinessbusinessinformation.chains.search
    , MyBusinessBusinessInformationChainsSearchResource
    , MyBusinessBusinessInformationChainsSearch (..)
    , newMyBusinessBusinessInformationChainsSearch

    -- ** mybusinessbusinessinformation.googleLocations.search
    , MyBusinessBusinessInformationGoogleLocationsSearchResource
    , MyBusinessBusinessInformationGoogleLocationsSearch (..)
    , newMyBusinessBusinessInformationGoogleLocationsSearch

    -- ** mybusinessbusinessinformation.locations.attributes.getGoogleUpdated
    , MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdatedResource
    , MyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated (..)
    , newMyBusinessBusinessInformationLocationsAttributesGetGoogleUpdated

    -- ** mybusinessbusinessinformation.locations.delete
    , MyBusinessBusinessInformationLocationsDeleteResource
    , MyBusinessBusinessInformationLocationsDelete (..)
    , newMyBusinessBusinessInformationLocationsDelete

    -- ** mybusinessbusinessinformation.locations.get
    , MyBusinessBusinessInformationLocationsGetResource
    , MyBusinessBusinessInformationLocationsGet (..)
    , newMyBusinessBusinessInformationLocationsGet

    -- ** mybusinessbusinessinformation.locations.getAttributes
    , MyBusinessBusinessInformationLocationsGetAttributesResource
    , MyBusinessBusinessInformationLocationsGetAttributes (..)
    , newMyBusinessBusinessInformationLocationsGetAttributes

    -- ** mybusinessbusinessinformation.locations.getGoogleUpdated
    , MyBusinessBusinessInformationLocationsGetGoogleUpdatedResource
    , MyBusinessBusinessInformationLocationsGetGoogleUpdated (..)
    , newMyBusinessBusinessInformationLocationsGetGoogleUpdated

    -- ** mybusinessbusinessinformation.locations.patch
    , MyBusinessBusinessInformationLocationsPatchResource
    , MyBusinessBusinessInformationLocationsPatch (..)
    , newMyBusinessBusinessInformationLocationsPatch

    -- ** mybusinessbusinessinformation.locations.updateAttributes
    , MyBusinessBusinessInformationLocationsUpdateAttributesResource
    , MyBusinessBusinessInformationLocationsUpdateAttributes (..)
    , newMyBusinessBusinessInformationLocationsUpdateAttributes

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

import Gogol.MyBusinessBusinessInformation.Accounts.Locations.Create
import Gogol.MyBusinessBusinessInformation.Accounts.Locations.List
import Gogol.MyBusinessBusinessInformation.Attributes.List
import Gogol.MyBusinessBusinessInformation.Categories.BatchGet
import Gogol.MyBusinessBusinessInformation.Categories.List
import Gogol.MyBusinessBusinessInformation.Chains.Get
import Gogol.MyBusinessBusinessInformation.Chains.Search
import Gogol.MyBusinessBusinessInformation.GoogleLocations.Search
import Gogol.MyBusinessBusinessInformation.Locations.Attributes.GetGoogleUpdated
import Gogol.MyBusinessBusinessInformation.Locations.Delete
import Gogol.MyBusinessBusinessInformation.Locations.Get
import Gogol.MyBusinessBusinessInformation.Locations.GetAttributes
import Gogol.MyBusinessBusinessInformation.Locations.GetGoogleUpdated
import Gogol.MyBusinessBusinessInformation.Locations.Patch
import Gogol.MyBusinessBusinessInformation.Locations.UpdateAttributes
import Gogol.MyBusinessBusinessInformation.Types
