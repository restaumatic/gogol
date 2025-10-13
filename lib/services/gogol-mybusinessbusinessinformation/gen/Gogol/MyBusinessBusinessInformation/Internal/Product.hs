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
-- Module      : Gogol.MyBusinessBusinessInformation.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessBusinessInformation.Internal.Product
  (

    -- * AdWordsLocationExtensions
    AdWordsLocationExtensions (..),
    newAdWordsLocationExtensions,

    -- * Attribute
    Attribute (..),
    newAttribute,

    -- * AttributeMetadata
    AttributeMetadata (..),
    newAttributeMetadata,

    -- * AttributeValueMetadata
    AttributeValueMetadata (..),
    newAttributeValueMetadata,

    -- * Attributes
    Attributes (..),
    newAttributes,

    -- * BatchGetCategoriesResponse
    BatchGetCategoriesResponse (..),
    newBatchGetCategoriesResponse,

    -- * BusinessHours
    BusinessHours (..),
    newBusinessHours,

    -- * Categories
    Categories (..),
    newCategories,

    -- * Category
    Category (..),
    newCategory,

    -- * Chain
    Chain (..),
    newChain,

    -- * ChainName
    ChainName (..),
    newChainName,

    -- * ChainUri
    ChainUri (..),
    newChainUri,

    -- * Date
    Date (..),
    newDate,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FreeFormServiceItem
    FreeFormServiceItem (..),
    newFreeFormServiceItem,

    -- * GoogleLocation
    GoogleLocation (..),
    newGoogleLocation,

    -- * GoogleUpdatedLocation
    GoogleUpdatedLocation (..),
    newGoogleUpdatedLocation,

    -- * Label
    Label (..),
    newLabel,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * ListAttributeMetadataResponse
    ListAttributeMetadataResponse (..),
    newListAttributeMetadataResponse,

    -- * ListCategoriesResponse
    ListCategoriesResponse (..),
    newListCategoriesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Money
    Money (..),
    newMoney,

    -- * MoreHours
    MoreHours (..),
    newMoreHours,

    -- * MoreHoursType
    MoreHoursType (..),
    newMoreHoursType,

    -- * OpenInfo
    OpenInfo (..),
    newOpenInfo,

    -- * PhoneNumbers
    PhoneNumbers (..),
    newPhoneNumbers,

    -- * PlaceInfo
    PlaceInfo (..),
    newPlaceInfo,

    -- * Places
    Places (..),
    newPlaces,

    -- * PostalAddress
    PostalAddress (..),
    newPostalAddress,

    -- * Profile
    Profile (..),
    newProfile,

    -- * RelationshipData
    RelationshipData (..),
    newRelationshipData,

    -- * RelevantLocation
    RelevantLocation (..),
    newRelevantLocation,

    -- * RepeatedEnumAttributeValue
    RepeatedEnumAttributeValue (..),
    newRepeatedEnumAttributeValue,

    -- * SearchChainsResponse
    SearchChainsResponse (..),
    newSearchChainsResponse,

    -- * SearchGoogleLocationsRequest
    SearchGoogleLocationsRequest (..),
    newSearchGoogleLocationsRequest,

    -- * SearchGoogleLocationsResponse
    SearchGoogleLocationsResponse (..),
    newSearchGoogleLocationsResponse,

    -- * ServiceAreaBusiness
    ServiceAreaBusiness (..),
    newServiceAreaBusiness,

    -- * ServiceItem
    ServiceItem (..),
    newServiceItem,

    -- * ServiceType
    ServiceType (..),
    newServiceType,

    -- * SpecialHourPeriod
    SpecialHourPeriod (..),
    newSpecialHourPeriod,

    -- * SpecialHours
    SpecialHours (..),
    newSpecialHours,

    -- * StructuredServiceItem
    StructuredServiceItem (..),
    newStructuredServiceItem,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- * UriAttributeValue
    UriAttributeValue (..),
    newUriAttributeValue,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessBusinessInformation.Internal.Sum

-- | Additional information that is surfaced in AdWords.
--
-- /See:/ 'newAdWordsLocationExtensions' smart constructor.
newtype AdWordsLocationExtensions = AdWordsLocationExtensions
    {
      -- | Required. An alternate phone number to display on AdWords location extensions instead of the location\'s primary phone number.
      adPhone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdWordsLocationExtensions' with the minimum fields required to make a request.
newAdWordsLocationExtensions 
    ::  AdWordsLocationExtensions
newAdWordsLocationExtensions
  = AdWordsLocationExtensions{adPhone = Core.Nothing}
instance Core.FromJSON AdWordsLocationExtensions where
        parseJSON
          = Core.withObject "AdWordsLocationExtensions"
              (\ o -> AdWordsLocationExtensions Core.<$> (o Core..:? "adPhone"))

instance Core.ToJSON AdWordsLocationExtensions where
        toJSON AdWordsLocationExtensions{..}
          = Core.object
              (Core.catMaybes [("adPhone" Core..=) Core.<$> adPhone])


-- | A location attribute. Attributes provide additional information about a location. The attributes that can be set on a location may vary based on the properties of that location (for example, category). Available attributes are determined by Google and may be added and removed without API changes.
--
-- /See:/ 'newAttribute' smart constructor.
data Attribute = Attribute
    {
      -- | Required. The resource name for this attribute.
      name :: (Core.Maybe Core.Text)
      -- | When the attribute value type is REPEATED_ENUM, this contains the attribute value, and the other values fields must be empty.
    , repeatedEnumValue :: (Core.Maybe RepeatedEnumAttributeValue)
      -- | When the attribute value type is URL, this field contains the value(s) for this attribute, and the other values fields must be empty.
    , uriValues :: (Core.Maybe [UriAttributeValue])
      -- | Output only. The type of value that this attribute contains. This should be used to determine how to interpret the value.
    , valueType :: (Core.Maybe Attribute_ValueType)
      -- | The values for this attribute. The type of the values supplied must match that expected for that attribute. This is a repeated field where multiple attribute values may be provided. Attribute types only support one value.
    , values :: (Core.Maybe [Core.Value])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attribute' with the minimum fields required to make a request.
newAttribute 
    ::  Attribute
newAttribute
  = Attribute{name = Core.Nothing, repeatedEnumValue = Core.Nothing,
              uriValues = Core.Nothing, valueType = Core.Nothing,
              values = Core.Nothing}
instance Core.FromJSON Attribute where
        parseJSON
          = Core.withObject "Attribute"
              (\ o ->
                 Attribute Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "repeatedEnumValue")
                     Core.<*> (o Core..:? "uriValues")
                     Core.<*> (o Core..:? "valueType")
                     Core.<*> (o Core..:? "values"))

instance Core.ToJSON Attribute where
        toJSON Attribute{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("repeatedEnumValue" Core..=) Core.<$> repeatedEnumValue,
                  ("uriValues" Core..=) Core.<$> uriValues,
                  ("valueType" Core..=) Core.<$> valueType,
                  ("values" Core..=) Core.<$> values])


-- | Metadata for an attribute. Contains display information for the attribute, including a localized name and a heading for grouping related attributes together.
--
-- /See:/ 'newAttributeMetadata' smart constructor.
data AttributeMetadata = AttributeMetadata
    {
      -- | If true, the attribute is deprecated and should no longer be used. If deprecated, updating this attribute will not result in an error, but updates will not be saved. At some point after being deprecated, the attribute will be removed entirely and it will become an error.
      deprecated :: (Core.Maybe Core.Bool)
      -- | The localized display name for the attribute, if available; otherwise, the English display name.
    , displayName :: (Core.Maybe Core.Text)
      -- | The localized display name of the group that contains this attribute, if available; otherwise, the English group name. Related attributes are collected into a group and should be displayed together under the heading given here.
    , groupDisplayName :: (Core.Maybe Core.Text)
      -- | The unique identifier for the attribute.
    , parent :: (Core.Maybe Core.Text)
      -- | If true, the attribute supports multiple values. If false, only a single value should be provided.
    , repeatable :: (Core.Maybe Core.Bool)
      -- | For some types of attributes (for example, enums), a list of supported values and corresponding display names for those values is provided.
    , valueMetadata :: (Core.Maybe [AttributeValueMetadata])
      -- | The value type for the attribute. Values set and retrieved should be expected to be of this type.
    , valueType :: (Core.Maybe AttributeMetadata_ValueType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeMetadata' with the minimum fields required to make a request.
newAttributeMetadata 
    ::  AttributeMetadata
newAttributeMetadata
  = AttributeMetadata{deprecated = Core.Nothing,
                      displayName = Core.Nothing, groupDisplayName = Core.Nothing,
                      parent = Core.Nothing, repeatable = Core.Nothing,
                      valueMetadata = Core.Nothing, valueType = Core.Nothing}
instance Core.FromJSON AttributeMetadata where
        parseJSON
          = Core.withObject "AttributeMetadata"
              (\ o ->
                 AttributeMetadata Core.<$>
                   (o Core..:? "deprecated") Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "groupDisplayName")
                     Core.<*> (o Core..:? "parent")
                     Core.<*> (o Core..:? "repeatable")
                     Core.<*> (o Core..:? "valueMetadata")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON AttributeMetadata where
        toJSON AttributeMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("deprecated" Core..=) Core.<$> deprecated,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("groupDisplayName" Core..=) Core.<$> groupDisplayName,
                  ("parent" Core..=) Core.<$> parent,
                  ("repeatable" Core..=) Core.<$> repeatable,
                  ("valueMetadata" Core..=) Core.<$> valueMetadata,
                  ("valueType" Core..=) Core.<$> valueType])


-- | Metadata for supported attribute values.
--
-- /See:/ 'newAttributeValueMetadata' smart constructor.
data AttributeValueMetadata = AttributeValueMetadata
    {
      -- | The display name for this value, localized where available; otherwise, in English. The value display name is intended to be used in context with the attribute display name. For example, for a \"WiFi\" enum attribute, this could contain \"Paid\" to represent paid Wi-Fi.
      displayName :: (Core.Maybe Core.Text)
      -- | The attribute value.
    , value :: (Core.Maybe Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeValueMetadata' with the minimum fields required to make a request.
newAttributeValueMetadata 
    ::  AttributeValueMetadata
newAttributeValueMetadata
  = AttributeValueMetadata{displayName = Core.Nothing,
                           value = Core.Nothing}
instance Core.FromJSON AttributeValueMetadata where
        parseJSON
          = Core.withObject "AttributeValueMetadata"
              (\ o ->
                 AttributeValueMetadata Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "value"))

instance Core.ToJSON AttributeValueMetadata where
        toJSON AttributeValueMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("value" Core..=) Core.<$> value])


-- | A container for all the attributes for a given location.
--
-- /See:/ 'newAttributes' smart constructor.
data Attributes = Attributes
    {
      -- | A collection of attributes that need to be updated.
      attributes :: (Core.Maybe [Attribute])
      -- | Required. Google identifier for this location in the form of @locations\/{location_id}\/attributes@.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
newAttributes 
    ::  Attributes
newAttributes
  = Attributes{attributes = Core.Nothing, name = Core.Nothing}
instance Core.FromJSON Attributes where
        parseJSON
          = Core.withObject "Attributes"
              (\ o ->
                 Attributes Core.<$>
                   (o Core..:? "attributes") Core.<*> (o Core..:? "name"))

instance Core.ToJSON Attributes where
        toJSON Attributes{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("name" Core..=) Core.<$> name])


-- | Response message for BusinessCategories.BatchGetBusinessCategories.
--
-- /See:/ 'newBatchGetCategoriesResponse' smart constructor.
newtype BatchGetCategoriesResponse = BatchGetCategoriesResponse
    {
      -- | Categories that match the GConcept ids provided in the request. They will not come in the same order as category ids in the request.
      categories :: (Core.Maybe [Category])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetCategoriesResponse' with the minimum fields required to make a request.
newBatchGetCategoriesResponse 
    ::  BatchGetCategoriesResponse
newBatchGetCategoriesResponse
  = BatchGetCategoriesResponse{categories = Core.Nothing}
instance Core.FromJSON BatchGetCategoriesResponse where
        parseJSON
          = Core.withObject "BatchGetCategoriesResponse"
              (\ o ->
                 BatchGetCategoriesResponse Core.<$> (o Core..:? "categories"))

instance Core.ToJSON BatchGetCategoriesResponse where
        toJSON BatchGetCategoriesResponse{..}
          = Core.object
              (Core.catMaybes [("categories" Core..=) Core.<$> categories])


-- | Represents the time periods that this location is open for business. Holds a collection of TimePeriod instances.
--
-- /See:/ 'newBusinessHours' smart constructor.
newtype BusinessHours = BusinessHours
    {
      -- | Required. A collection of times that this location is open for business. Each period represents a range of hours when the location is open during the week.
      periods :: (Core.Maybe [TimePeriod])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BusinessHours' with the minimum fields required to make a request.
newBusinessHours 
    ::  BusinessHours
newBusinessHours = BusinessHours{periods = Core.Nothing}
instance Core.FromJSON BusinessHours where
        parseJSON
          = Core.withObject "BusinessHours"
              (\ o -> BusinessHours Core.<$> (o Core..:? "periods"))

instance Core.ToJSON BusinessHours where
        toJSON BusinessHours{..}
          = Core.object
              (Core.catMaybes [("periods" Core..=) Core.<$> periods])


-- | A collection of categories that describes the business. During updates, both fields must be set. Clients are prohibited from individually updating the primary or additional categories using the update mask.
--
-- /See:/ 'newCategories' smart constructor.
data Categories = Categories
    {
      -- | Optional. Additional categories to describe your business. Categories help your customers find accurate, specific results for services they\'re interested in. To keep your business information accurate and live, make sure that you use as few categories as possible to describe your overall core business. Choose categories that are as specific as possible, but representative of your main business.
      additionalCategories :: (Core.Maybe [Category])
      -- | Required. Category that best describes the core business this location engages in.
    , primaryCategory :: (Core.Maybe Category)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Categories' with the minimum fields required to make a request.
newCategories 
    ::  Categories
newCategories
  = Categories{additionalCategories = Core.Nothing,
               primaryCategory = Core.Nothing}
instance Core.FromJSON Categories where
        parseJSON
          = Core.withObject "Categories"
              (\ o ->
                 Categories Core.<$>
                   (o Core..:? "additionalCategories") Core.<*>
                     (o Core..:? "primaryCategory"))

instance Core.ToJSON Categories where
        toJSON Categories{..}
          = Core.object
              (Core.catMaybes
                 [("additionalCategories" Core..=) Core.<$> additionalCategories,
                  ("primaryCategory" Core..=) Core.<$> primaryCategory])


-- | A category describing what this business is (not what it does). For a list of valid category IDs, and the mappings to their human-readable names, see @categories.list@.
--
-- /See:/ 'newCategory' smart constructor.
data Category = Category
    {
      -- | Output only. The human-readable name of the category. This is set when reading the location. When modifying the location, @category_id@ must be set.
      displayName :: (Core.Maybe Core.Text)
      -- | Output only. More hours types that are available for this business category.
    , moreHoursTypes :: (Core.Maybe [MoreHoursType])
      -- | Required. A stable ID (provided by Google) for this category. The value must be specified when modifying the category (when creating or updating a location).
    , name :: (Core.Maybe Core.Text)
      -- | Output only. A list of all the service types that are available for this business category.
    , serviceTypes :: (Core.Maybe [ServiceType])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
newCategory 
    ::  Category
newCategory
  = Category{displayName = Core.Nothing,
             moreHoursTypes = Core.Nothing, name = Core.Nothing,
             serviceTypes = Core.Nothing}
instance Core.FromJSON Category where
        parseJSON
          = Core.withObject "Category"
              (\ o ->
                 Category Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "moreHoursTypes")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "serviceTypes"))

instance Core.ToJSON Category where
        toJSON Category{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("moreHoursTypes" Core..=) Core.<$> moreHoursTypes,
                  ("name" Core..=) Core.<$> name,
                  ("serviceTypes" Core..=) Core.<$> serviceTypes])


-- | A chain is a brand that your business\'s locations can be affiliated with.
--
-- /See:/ 'newChain' smart constructor.
data Chain = Chain
    {
      -- | Names of the chain.
      chainNames :: (Core.Maybe [ChainName])
      -- | Number of locations that are part of this chain.
    , locationCount :: (Core.Maybe Core.Int32)
      -- | Required. The chain\'s resource name, in the format @chains\/{chain_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | Websites of the chain.
    , websites :: (Core.Maybe [ChainUri])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Chain' with the minimum fields required to make a request.
newChain 
    ::  Chain
newChain
  = Chain{chainNames = Core.Nothing, locationCount = Core.Nothing,
          name = Core.Nothing, websites = Core.Nothing}
instance Core.FromJSON Chain where
        parseJSON
          = Core.withObject "Chain"
              (\ o ->
                 Chain Core.<$>
                   (o Core..:? "chainNames") Core.<*> (o Core..:? "locationCount")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "websites"))

instance Core.ToJSON Chain where
        toJSON Chain{..}
          = Core.object
              (Core.catMaybes
                 [("chainNames" Core..=) Core.<$> chainNames,
                  ("locationCount" Core..=) Core.<$> locationCount,
                  ("name" Core..=) Core.<$> name,
                  ("websites" Core..=) Core.<$> websites])


-- | Name to be used when displaying the chain.
--
-- /See:/ 'newChainName' smart constructor.
data ChainName = ChainName
    {
      -- | The display name for this chain.
      displayName :: (Core.Maybe Core.Text)
      -- | The BCP 47 code of language of the name.
    , languageCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChainName' with the minimum fields required to make a request.
newChainName 
    ::  ChainName
newChainName
  = ChainName{displayName = Core.Nothing,
              languageCode = Core.Nothing}
instance Core.FromJSON ChainName where
        parseJSON
          = Core.withObject "ChainName"
              (\ o ->
                 ChainName Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "languageCode"))

instance Core.ToJSON ChainName where
        toJSON ChainName{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("languageCode" Core..=) Core.<$> languageCode])


-- | Url to be used when displaying the chain.
--
-- /See:/ 'newChainUri' smart constructor.
newtype ChainUri = ChainUri
    {
      -- | The uri for this chain.
      uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChainUri' with the minimum fields required to make a request.
newChainUri 
    ::  ChainUri
newChainUri = ChainUri{uri = Core.Nothing}
instance Core.FromJSON ChainUri where
        parseJSON
          = Core.withObject "ChainUri"
              (\ o -> ChainUri Core.<$> (o Core..:? "uri"))

instance Core.ToJSON ChainUri where
        toJSON ChainUri{..}
          = Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])


-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
    {
      -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
      day :: (Core.Maybe Core.Int32)
      -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    , month :: (Core.Maybe Core.Int32)
      -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    , year :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate 
    ::  Date
newDate
  = Date{day = Core.Nothing, month = Core.Nothing,
         year = Core.Nothing}
instance Core.FromJSON Date where
        parseJSON
          = Core.withObject "Date"
              (\ o ->
                 Date Core.<$>
                   (o Core..:? "day") Core.<*> (o Core..:? "month") Core.<*>
                     (o Core..:? "year"))

instance Core.ToJSON Date where
        toJSON Date{..}
          = Core.object
              (Core.catMaybes
                 [("day" Core..=) Core.<$> day, ("month" Core..=) Core.<$> month,
                  ("year" Core..=) Core.<$> year])


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


-- | Represents a free-form service offered by the merchant. These are services that are not exposed as part of our structure service data. The merchant manually enters the names for of such services via a geomerchant surface.
--
-- /See:/ 'newFreeFormServiceItem' smart constructor.
data FreeFormServiceItem = FreeFormServiceItem
    {
      -- | Required. This field represents the category name (i.e. the category\'s stable ID). The @category@ and @service_type_id@ should match the possible combinations provided in the @Category@ message.
      category :: (Core.Maybe Core.Text)
      -- | Required. Language-tagged labels for the item. We recommend that item names be 140 characters or less, and descriptions 250 characters or less. This field should only be set if the input is a custom service item. Standardized service types should be updated via service/type/id.
    , label :: (Core.Maybe Label)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeFormServiceItem' with the minimum fields required to make a request.
newFreeFormServiceItem 
    ::  FreeFormServiceItem
newFreeFormServiceItem
  = FreeFormServiceItem{category = Core.Nothing,
                        label = Core.Nothing}
instance Core.FromJSON FreeFormServiceItem where
        parseJSON
          = Core.withObject "FreeFormServiceItem"
              (\ o ->
                 FreeFormServiceItem Core.<$>
                   (o Core..:? "category") Core.<*> (o Core..:? "label"))

instance Core.ToJSON FreeFormServiceItem where
        toJSON FreeFormServiceItem{..}
          = Core.object
              (Core.catMaybes
                 [("category" Core..=) Core.<$> category,
                  ("label" Core..=) Core.<$> label])


-- | Represents a Location that is present on Google. This can be a location that has been claimed by the user, someone else, or could be unclaimed.
--
-- /See:/ 'newGoogleLocation' smart constructor.
data GoogleLocation = GoogleLocation
    {
      -- | The sparsely populated Location information. This field can be re-used in CreateLocation if it is not currently claimed by a user.
      location :: (Core.Maybe Location)
      -- | Resource name of this GoogleLocation, in the format @googleLocations\/{googleLocationId}@.
    , name :: (Core.Maybe Core.Text)
      -- | A URL that will redirect the user to the request admin rights UI. This field is only present if the location has already been claimed by any user, including the current user.
    , requestAdminRightsUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLocation' with the minimum fields required to make a request.
newGoogleLocation 
    ::  GoogleLocation
newGoogleLocation
  = GoogleLocation{location = Core.Nothing, name = Core.Nothing,
                   requestAdminRightsUri = Core.Nothing}
instance Core.FromJSON GoogleLocation where
        parseJSON
          = Core.withObject "GoogleLocation"
              (\ o ->
                 GoogleLocation Core.<$>
                   (o Core..:? "location") Core.<*> (o Core..:? "name") Core.<*>
                     (o Core..:? "requestAdminRightsUri"))

instance Core.ToJSON GoogleLocation where
        toJSON GoogleLocation{..}
          = Core.object
              (Core.catMaybes
                 [("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("requestAdminRightsUri" Core..=) Core.<$> requestAdminRightsUri])


-- | Represents a location that was modified by Google.
--
-- /See:/ 'newGoogleUpdatedLocation' smart constructor.
data GoogleUpdatedLocation = GoogleUpdatedLocation
    {
      -- | The fields that Google updated.
      diffMask :: (Core.Maybe Core.FieldMask)
      -- | The Google-updated version of this location.
    , location :: (Core.Maybe Location)
      -- | The fields that have pending edits that haven\'t yet been pushed to Maps and Search.
    , pendingMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleUpdatedLocation' with the minimum fields required to make a request.
newGoogleUpdatedLocation 
    ::  GoogleUpdatedLocation
newGoogleUpdatedLocation
  = GoogleUpdatedLocation{diffMask = Core.Nothing,
                          location = Core.Nothing, pendingMask = Core.Nothing}
instance Core.FromJSON GoogleUpdatedLocation where
        parseJSON
          = Core.withObject "GoogleUpdatedLocation"
              (\ o ->
                 GoogleUpdatedLocation Core.<$>
                   (o Core..:? "diffMask") Core.<*> (o Core..:? "location") Core.<*>
                     (o Core..:? "pendingMask"))

instance Core.ToJSON GoogleUpdatedLocation where
        toJSON GoogleUpdatedLocation{..}
          = Core.object
              (Core.catMaybes
                 [("diffMask" Core..=) Core.<$> diffMask,
                  ("location" Core..=) Core.<$> location,
                  ("pendingMask" Core..=) Core.<$> pendingMask])


-- | Label to be used when displaying the price list, section, or item.
--
-- /See:/ 'newLabel' smart constructor.
data Label = Label
    {
      -- | Optional. Description of the price list, section, or item.
      description :: (Core.Maybe Core.Text)
      -- | Required. Display name for the price list, section, or item.
    , displayName :: (Core.Maybe Core.Text)
      -- | Optional. The BCP-47 language code that these strings apply for. Only one set of labels may be set per language.
    , languageCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
newLabel 
    ::  Label
newLabel
  = Label{description = Core.Nothing, displayName = Core.Nothing,
          languageCode = Core.Nothing}
instance Core.FromJSON Label where
        parseJSON
          = Core.withObject "Label"
              (\ o ->
                 Label Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "languageCode"))

instance Core.ToJSON Label where
        toJSON Label{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("languageCode" Core..=) Core.<$> languageCode])


-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
    {
      -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
      latitude :: (Core.Maybe Core.Double)
      -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng 
    ::  LatLng
newLatLng
  = LatLng{latitude = Core.Nothing, longitude = Core.Nothing}
instance Core.FromJSON LatLng where
        parseJSON
          = Core.withObject "LatLng"
              (\ o ->
                 LatLng Core.<$>
                   (o Core..:? "latitude") Core.<*> (o Core..:? "longitude"))

instance Core.ToJSON LatLng where
        toJSON LatLng{..}
          = Core.object
              (Core.catMaybes
                 [("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


-- | Response for AttributesService.ListAttributeMetadata.
--
-- /See:/ 'newListAttributeMetadataResponse' smart constructor.
data ListAttributeMetadataResponse = ListAttributeMetadataResponse
    {
      -- | A collection of attribute metadata for the available attributes.
      attributeMetadata :: (Core.Maybe [AttributeMetadata])
      -- | If the number of attributes exceeded the requested page size, this field will be populated with a token to fetch the next page of attributes on a subsequent call to @attributes.list@. If there are no more attributes, this field will not be present in the response.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAttributeMetadataResponse' with the minimum fields required to make a request.
newListAttributeMetadataResponse 
    ::  ListAttributeMetadataResponse
newListAttributeMetadataResponse
  = ListAttributeMetadataResponse{attributeMetadata = Core.Nothing,
                                  nextPageToken = Core.Nothing}
instance Core.FromJSON ListAttributeMetadataResponse where
        parseJSON
          = Core.withObject "ListAttributeMetadataResponse"
              (\ o ->
                 ListAttributeMetadataResponse Core.<$>
                   (o Core..:? "attributeMetadata") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAttributeMetadataResponse where
        toJSON ListAttributeMetadataResponse{..}
          = Core.object
              (Core.catMaybes
                 [("attributeMetadata" Core..=) Core.<$> attributeMetadata,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for BusinessCategories.ListCategories.
--
-- /See:/ 'newListCategoriesResponse' smart constructor.
data ListCategoriesResponse = ListCategoriesResponse
    {
      -- | The matching categories based on the requested parameters.
      categories :: (Core.Maybe [Category])
      -- | If the number of categories exceeded the requested page size, this field will be populated with a token to fetch the next page of categories on a subsequent call to @ListCategories@.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCategoriesResponse' with the minimum fields required to make a request.
newListCategoriesResponse 
    ::  ListCategoriesResponse
newListCategoriesResponse
  = ListCategoriesResponse{categories = Core.Nothing,
                           nextPageToken = Core.Nothing}
instance Core.FromJSON ListCategoriesResponse where
        parseJSON
          = Core.withObject "ListCategoriesResponse"
              (\ o ->
                 ListCategoriesResponse Core.<$>
                   (o Core..:? "categories") Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCategoriesResponse where
        toJSON ListCategoriesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("categories" Core..=) Core.<$> categories,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | The locations.
      locations :: (Core.Maybe [Location])
      -- | If the number of locations exceeded the requested page size, this field is populated with a token to fetch the next page of locations on a subsequent call to @ListLocations@. If there are no more locations, this field is not present in the response.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The approximate number of Locations in the list irrespective of pagination. This field will only be returned if @filter@ is used as a query parameter.
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse
  = ListLocationsResponse{locations = Core.Nothing,
                          nextPageToken = Core.Nothing, totalSize = Core.Nothing}
instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations") Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | A location. See the [help center article] (https:\/\/support.google.com\/business\/answer\/3038177) for a detailed description of these fields, or the </my-business/reference/rest/v4/categories category endpoint> for a list of valid business categories.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | Optional. Additional information that is surfaced in AdWords.
      adWordsLocationExtensions :: (Core.Maybe AdWordsLocationExtensions)
      -- | Optional. The different categories that describe the business.
    , categories :: (Core.Maybe Categories)
      -- | Optional. A collection of free-form strings to allow you to tag your business. These labels are NOT user facing; only you can see them. Must be between 1-255 characters per label.
    , labels :: (Core.Maybe [Core.Text])
      -- | Immutable. The language of the location. Set during creation and not updateable.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. User-provided latitude and longitude. When creating a location, this field is ignored if the provided address geocodes successfully. This field is only returned on get requests if the user-provided @latlng@ value was accepted during create, or the @latlng@ value was updated through the Google Business Profile website. This field can only be updated by approved clients.
    , latlng :: (Core.Maybe LatLng)
      -- | Output only. Additional non-user-editable information.
    , metadata :: (Core.Maybe Metadata)
      -- | Optional. More hours for a business\'s different departments or specific customers.
    , moreHours :: (Core.Maybe [MoreHours])
      -- | Google identifier for this location in the form: @locations\/{location_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. A flag that indicates whether the location is currently open for business.
    , openInfo :: (Core.Maybe OpenInfo)
      -- | Optional. The different phone numbers that customers can use to get in touch with the business.
    , phoneNumbers :: (Core.Maybe PhoneNumbers)
      -- | Optional. Describes your business in your own voice and shares with users the unique story of your business and offerings. This field is required for all categories except lodging categories (e.g. hotels, motels, inns).
    , profile :: (Core.Maybe Profile)
      -- | Optional. Operating hours for the business.
    , regularHours :: (Core.Maybe BusinessHours)
      -- | Optional. All locations and chain related to this one.
    , relationshipData :: (Core.Maybe RelationshipData)
      -- | Optional. Service area businesses provide their service at the customer\'s location. If this business is a service area business, this field describes the area(s) serviced by the business.
    , serviceArea :: (Core.Maybe ServiceAreaBusiness)
      -- | Optional. List of services supported by merchants. A service can be haircut, install water heater, etc. Duplicated service items will be removed automatically.
    , serviceItems :: (Core.Maybe [ServiceItem])
      -- | Optional. Special hours for the business. This typically includes holiday hours, and other times outside of regular operating hours. These override regular business hours. This field cannot be set without regular hours.
    , specialHours :: (Core.Maybe SpecialHours)
      -- | Optional. External identifier for this location, which must be unique within a given account. This is a means of associating the location with your own records.
    , storeCode :: (Core.Maybe Core.Text)
      -- | Optional. A precise, accurate address to describe your business location. PO boxes or mailboxes located at remote locations are not acceptable. At this time, you can specify a maximum of five @address_lines@ values in the address. This field should only be set for businesses that have a storefront. This field should not be set for locations of type @CUSTOMER_LOCATION_ONLY@ but if set, any value provided will be discarded.
    , storefrontAddress :: (Core.Maybe PostalAddress)
      -- | Required. Location name should reflect your business\'s real-world name, as used consistently on your storefront, website, and stationery, and as known to customers. Any additional information, when relevant, can be included in other fields of the resource (for example, @Address@, @Categories@). Don\'t add unnecessary information to your name (for example, prefer \"Google\" over \"Google Inc. - Mountain View Corporate Headquarters\"). Don\'t include marketing taglines, store codes, special characters, hours or closed\/open status, phone numbers, website URLs, service\/product information, location\/address or directions, or containment information (for example, \"Chase ATM in Duane Reade\").
    , title :: (Core.Maybe Core.Text)
      -- | Optional. A URL for this business. If possible, use a URL that represents this individual business location instead of a generic website\/URL that represents all locations, or the brand.
    , websiteUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation
  = Location{adWordsLocationExtensions = Core.Nothing,
             categories = Core.Nothing, labels = Core.Nothing,
             languageCode = Core.Nothing, latlng = Core.Nothing,
             metadata = Core.Nothing, moreHours = Core.Nothing,
             name = Core.Nothing, openInfo = Core.Nothing,
             phoneNumbers = Core.Nothing, profile = Core.Nothing,
             regularHours = Core.Nothing, relationshipData = Core.Nothing,
             serviceArea = Core.Nothing, serviceItems = Core.Nothing,
             specialHours = Core.Nothing, storeCode = Core.Nothing,
             storefrontAddress = Core.Nothing, title = Core.Nothing,
             websiteUri = Core.Nothing}
instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "adWordsLocationExtensions") Core.<*>
                     (o Core..:? "categories")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "latlng")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "moreHours")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "openInfo")
                     Core.<*> (o Core..:? "phoneNumbers")
                     Core.<*> (o Core..:? "profile")
                     Core.<*> (o Core..:? "regularHours")
                     Core.<*> (o Core..:? "relationshipData")
                     Core.<*> (o Core..:? "serviceArea")
                     Core.<*> (o Core..:? "serviceItems")
                     Core.<*> (o Core..:? "specialHours")
                     Core.<*> (o Core..:? "storeCode")
                     Core.<*> (o Core..:? "storefrontAddress")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "websiteUri"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("adWordsLocationExtensions" Core..=) Core.<$>
                    adWordsLocationExtensions,
                  ("categories" Core..=) Core.<$> categories,
                  ("labels" Core..=) Core.<$> labels,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("latlng" Core..=) Core.<$> latlng,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("moreHours" Core..=) Core.<$> moreHours,
                  ("name" Core..=) Core.<$> name,
                  ("openInfo" Core..=) Core.<$> openInfo,
                  ("phoneNumbers" Core..=) Core.<$> phoneNumbers,
                  ("profile" Core..=) Core.<$> profile,
                  ("regularHours" Core..=) Core.<$> regularHours,
                  ("relationshipData" Core..=) Core.<$> relationshipData,
                  ("serviceArea" Core..=) Core.<$> serviceArea,
                  ("serviceItems" Core..=) Core.<$> serviceItems,
                  ("specialHours" Core..=) Core.<$> specialHours,
                  ("storeCode" Core..=) Core.<$> storeCode,
                  ("storefrontAddress" Core..=) Core.<$> storefrontAddress,
                  ("title" Core..=) Core.<$> title,
                  ("websiteUri" Core..=) Core.<$> websiteUri])


-- | Additional non-user-editable information about the location.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
    {
      -- | Output only. Indicates whether the location can be deleted using the API.
      canDelete :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates if the listing is eligible for business calls.
    , canHaveBusinessCalls :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates if the listing is eligible for food menu.
    , canHaveFoodMenus :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates if the listing can modify the service list.
    , canModifyServiceList :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates whether the location can operate on Health data.
    , canOperateHealthData :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates if the listing can manage local posts. Deprecated: This field is no longer populated and will be removed in a future version.
    , canOperateLocalPost :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates whether the location can operate on Lodging data.
    , canOperateLodgingData :: (Core.Maybe Core.Bool)
      -- | Output only. The location resource that this location duplicates.
    , duplicateLocation :: (Core.Maybe Core.Text)
      -- | Output only. Indicates whether the place ID associated with this location has updates that need to be updated or rejected by the client. If this boolean is set, you should call the @getGoogleUpdated@ method to lookup information that\'s needs to be verified.
    , hasGoogleUpdated :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates whether any of this Location\'s properties are in the edit pending state.
    , hasPendingEdits :: (Core.Maybe Core.Bool)
      -- | Output only. Indicates if the listing has Voice of Merchant. If this boolean is false, you should call the locations.getVoiceOfMerchantState API to get details as to why they do not have Voice of Merchant.
    , hasVoiceOfMerchant :: (Core.Maybe Core.Bool)
      -- | Output only.
    , isParticularlyPersonalPlace :: (Core.Maybe Core.Bool)
      -- | Output only. A link to the location on Maps.
    , mapsUri :: (Core.Maybe Core.Text)
      -- | Output only. A link to the page on Google Search where a customer can leave a review for the location.
    , newReviewUri' :: (Core.Maybe Core.Text)
      -- | Output only. If this locationappears on Google Maps, this field is populated with the place ID for the location. This ID can be used in various Places APIs. This field can be set during Create calls, but not for Update.
    , placeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata 
    ::  Metadata
newMetadata
  = Metadata{canDelete = Core.Nothing,
             canHaveBusinessCalls = Core.Nothing,
             canHaveFoodMenus = Core.Nothing,
             canModifyServiceList = Core.Nothing,
             canOperateHealthData = Core.Nothing,
             canOperateLocalPost = Core.Nothing,
             canOperateLodgingData = Core.Nothing,
             duplicateLocation = Core.Nothing, hasGoogleUpdated = Core.Nothing,
             hasPendingEdits = Core.Nothing, hasVoiceOfMerchant = Core.Nothing,
             isParticularlyPersonalPlace = Core.Nothing, mapsUri = Core.Nothing,
             newReviewUri' = Core.Nothing, placeId = Core.Nothing}
instance Core.FromJSON Metadata where
        parseJSON
          = Core.withObject "Metadata"
              (\ o ->
                 Metadata Core.<$>
                   (o Core..:? "canDelete") Core.<*>
                     (o Core..:? "canHaveBusinessCalls")
                     Core.<*> (o Core..:? "canHaveFoodMenus")
                     Core.<*> (o Core..:? "canModifyServiceList")
                     Core.<*> (o Core..:? "canOperateHealthData")
                     Core.<*> (o Core..:? "canOperateLocalPost")
                     Core.<*> (o Core..:? "canOperateLodgingData")
                     Core.<*> (o Core..:? "duplicateLocation")
                     Core.<*> (o Core..:? "hasGoogleUpdated")
                     Core.<*> (o Core..:? "hasPendingEdits")
                     Core.<*> (o Core..:? "hasVoiceOfMerchant")
                     Core.<*> (o Core..:? "isParticularlyPersonalPlace")
                     Core.<*> (o Core..:? "mapsUri")
                     Core.<*> (o Core..:? "newReviewUri")
                     Core.<*> (o Core..:? "placeId"))

instance Core.ToJSON Metadata where
        toJSON Metadata{..}
          = Core.object
              (Core.catMaybes
                 [("canDelete" Core..=) Core.<$> canDelete,
                  ("canHaveBusinessCalls" Core..=) Core.<$> canHaveBusinessCalls,
                  ("canHaveFoodMenus" Core..=) Core.<$> canHaveFoodMenus,
                  ("canModifyServiceList" Core..=) Core.<$> canModifyServiceList,
                  ("canOperateHealthData" Core..=) Core.<$> canOperateHealthData,
                  ("canOperateLocalPost" Core..=) Core.<$> canOperateLocalPost,
                  ("canOperateLodgingData" Core..=) Core.<$> canOperateLodgingData,
                  ("duplicateLocation" Core..=) Core.<$> duplicateLocation,
                  ("hasGoogleUpdated" Core..=) Core.<$> hasGoogleUpdated,
                  ("hasPendingEdits" Core..=) Core.<$> hasPendingEdits,
                  ("hasVoiceOfMerchant" Core..=) Core.<$> hasVoiceOfMerchant,
                  ("isParticularlyPersonalPlace" Core..=) Core.<$>
                    isParticularlyPersonalPlace,
                  ("mapsUri" Core..=) Core.<$> mapsUri,
                  ("newReviewUri" Core..=) Core.<$> newReviewUri',
                  ("placeId" Core..=) Core.<$> placeId])


-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
    {
      -- | The three-letter currency code defined in ISO 4217.
      currencyCode :: (Core.Maybe Core.Text)
      -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    , nanos :: (Core.Maybe Core.Int32)
      -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    , units :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney 
    ::  Money
newMoney
  = Money{currencyCode = Core.Nothing, nanos = Core.Nothing,
          units = Core.Nothing}
instance Core.FromJSON Money where
        parseJSON
          = Core.withObject "Money"
              (\ o ->
                 Money Core.<$>
                   (o Core..:? "currencyCode") Core.<*> (o Core..:? "nanos") Core.<*>
                     (o Core..:? "units" Core.<&> Core.fmap Core.fromAsText))

instance Core.ToJSON Money where
        toJSON Money{..}
          = Core.object
              (Core.catMaybes
                 [("currencyCode" Core..=) Core.<$> currencyCode,
                  ("nanos" Core..=) Core.<$> nanos,
                  ("units" Core..=) Core.. Core.AsText Core.<$> units])


-- | The time periods during which a location is open for certain types of business.
--
-- /See:/ 'newMoreHours' smart constructor.
data MoreHours = MoreHours
    {
      -- | Required. Type of hours. Clients should call {#link businessCategories:BatchGet} to get supported hours types for categories of their locations.
      hoursTypeId :: (Core.Maybe Core.Text)
      -- | Required. A collection of times that this location is open. Each period represents a range of hours when the location is open during the week.
    , periods :: (Core.Maybe [TimePeriod])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoreHours' with the minimum fields required to make a request.
newMoreHours 
    ::  MoreHours
newMoreHours
  = MoreHours{hoursTypeId = Core.Nothing, periods = Core.Nothing}
instance Core.FromJSON MoreHours where
        parseJSON
          = Core.withObject "MoreHours"
              (\ o ->
                 MoreHours Core.<$>
                   (o Core..:? "hoursTypeId") Core.<*> (o Core..:? "periods"))

instance Core.ToJSON MoreHours where
        toJSON MoreHours{..}
          = Core.object
              (Core.catMaybes
                 [("hoursTypeId" Core..=) Core.<$> hoursTypeId,
                  ("periods" Core..=) Core.<$> periods])


-- | More hours types that a business can offers, in addition to its regular hours.
--
-- /See:/ 'newMoreHoursType' smart constructor.
data MoreHoursType = MoreHoursType
    {
      -- | Output only. The human-readable English display name for the hours type.
      displayName :: (Core.Maybe Core.Text)
      -- | Output only. A stable ID provided by Google for this hours type.
    , hoursTypeId :: (Core.Maybe Core.Text)
      -- | Output only. The human-readable localized display name for the hours type.
    , localizedDisplayName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoreHoursType' with the minimum fields required to make a request.
newMoreHoursType 
    ::  MoreHoursType
newMoreHoursType
  = MoreHoursType{displayName = Core.Nothing,
                  hoursTypeId = Core.Nothing, localizedDisplayName = Core.Nothing}
instance Core.FromJSON MoreHoursType where
        parseJSON
          = Core.withObject "MoreHoursType"
              (\ o ->
                 MoreHoursType Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "hoursTypeId")
                     Core.<*> (o Core..:? "localizedDisplayName"))

instance Core.ToJSON MoreHoursType where
        toJSON MoreHoursType{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("hoursTypeId" Core..=) Core.<$> hoursTypeId,
                  ("localizedDisplayName" Core..=) Core.<$> localizedDisplayName])


-- | Information related to the opening state of the business.
--
-- /See:/ 'newOpenInfo' smart constructor.
data OpenInfo = OpenInfo
    {
      -- | Output only. Indicates whether this business is eligible for re-open.
      canReopen :: (Core.Maybe Core.Bool)
      -- | Optional. The date on which the location first opened. If the exact day is not known, month and year only can be provided. The date must be in the past or be no more than one year in the future.
    , openingDate :: (Core.Maybe Date)
      -- | Required. Indicates whether or not the Location is currently open for business. All locations are open by default, unless updated to be closed.
    , status :: (Core.Maybe OpenInfo_Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OpenInfo' with the minimum fields required to make a request.
newOpenInfo 
    ::  OpenInfo
newOpenInfo
  = OpenInfo{canReopen = Core.Nothing, openingDate = Core.Nothing,
             status = Core.Nothing}
instance Core.FromJSON OpenInfo where
        parseJSON
          = Core.withObject "OpenInfo"
              (\ o ->
                 OpenInfo Core.<$>
                   (o Core..:? "canReopen") Core.<*> (o Core..:? "openingDate")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON OpenInfo where
        toJSON OpenInfo{..}
          = Core.object
              (Core.catMaybes
                 [("canReopen" Core..=) Core.<$> canReopen,
                  ("openingDate" Core..=) Core.<$> openingDate,
                  ("status" Core..=) Core.<$> status])


-- | A collection of phone numbers for the business. During updates, both fields must be set. Clients may not update just the primary or additional phone numbers using the update mask. International phone format is preferred, such as \"+1 415 555 0132\", see more in (https:\/\/developers.google.com\/style\/phone-numbers#international-phone-numbers).
--
-- /See:/ 'newPhoneNumbers' smart constructor.
data PhoneNumbers = PhoneNumbers
    {
      -- | Optional. Up to two phone numbers (mobile or landline, no fax) at which your business can be called, in addition to your primary phone number.
      additionalPhones :: (Core.Maybe [Core.Text])
      -- | Required. A phone number that connects to your individual business location as directly as possible. Use a local phone number instead of a central, call center helpline number whenever possible.
    , primaryPhone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhoneNumbers' with the minimum fields required to make a request.
newPhoneNumbers 
    ::  PhoneNumbers
newPhoneNumbers
  = PhoneNumbers{additionalPhones = Core.Nothing,
                 primaryPhone = Core.Nothing}
instance Core.FromJSON PhoneNumbers where
        parseJSON
          = Core.withObject "PhoneNumbers"
              (\ o ->
                 PhoneNumbers Core.<$>
                   (o Core..:? "additionalPhones") Core.<*>
                     (o Core..:? "primaryPhone"))

instance Core.ToJSON PhoneNumbers where
        toJSON PhoneNumbers{..}
          = Core.object
              (Core.catMaybes
                 [("additionalPhones" Core..=) Core.<$> additionalPhones,
                  ("primaryPhone" Core..=) Core.<$> primaryPhone])


-- | Defines an area that\'s represented by a place ID.
--
-- /See:/ 'newPlaceInfo' smart constructor.
data PlaceInfo = PlaceInfo
    {
      -- | Required. The ID of the place. Must correspond to a region. (https:\/\/developers.google.com\/places\/web-service\/supported_types#table3)
      placeId :: (Core.Maybe Core.Text)
      -- | Required. The localized name of the place. For example, @Scottsdale, AZ@.
    , placeName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaceInfo' with the minimum fields required to make a request.
newPlaceInfo 
    ::  PlaceInfo
newPlaceInfo
  = PlaceInfo{placeId = Core.Nothing, placeName = Core.Nothing}
instance Core.FromJSON PlaceInfo where
        parseJSON
          = Core.withObject "PlaceInfo"
              (\ o ->
                 PlaceInfo Core.<$>
                   (o Core..:? "placeId") Core.<*> (o Core..:? "placeName"))

instance Core.ToJSON PlaceInfo where
        toJSON PlaceInfo{..}
          = Core.object
              (Core.catMaybes
                 [("placeId" Core..=) Core.<$> placeId,
                  ("placeName" Core..=) Core.<$> placeName])


-- | Defines the union of areas represented by a set of places.
--
-- /See:/ 'newPlaces' smart constructor.
newtype Places = Places
    {
      -- | The areas represented by place IDs. Limited to a maximum of 20 places.
      placeInfos :: (Core.Maybe [PlaceInfo])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Places' with the minimum fields required to make a request.
newPlaces 
    ::  Places
newPlaces = Places{placeInfos = Core.Nothing}
instance Core.FromJSON Places where
        parseJSON
          = Core.withObject "Places"
              (\ o -> Places Core.<$> (o Core..:? "placeInfos"))

instance Core.ToJSON Places where
        toJSON Places{..}
          = Core.object
              (Core.catMaybes [("placeInfos" Core..=) Core.<$> placeInfos])


-- | Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https:\/\/github.com\/google\/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https:\/\/support.google.com\/business\/answer\/6397478.
--
-- /See:/ 'newPostalAddress' smart constructor.
data PostalAddress = PostalAddress
    {
      -- | Unstructured address lines describing the lower levels of an address. Because values in @address_lines@ do not have type information and may sometimes contain multiple values in a single field (for example, \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country or region of the address. In places where this can vary (for example, Japan), @address_language@ is used to make it explicit (for example, \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). In this way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a @region_code@ with all remaining information placed in the @address_lines@. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an
      -- address only containing a @region_code@ and @address_lines@ and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).
      addressLines :: (Core.Maybe [Core.Text])
      -- | Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. For Spain, this is the province and not the autonomous community (for example, \"Barcelona\" and not \"Catalonia\"). Many countries don\'t use an administrative area in postal addresses. For example, in Switzerland, this should be left unpopulated.
    , administrativeArea :: (Core.Maybe Core.Text)
      -- | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address\' country\/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave @locality@ empty and use @address_lines@.
    , locality :: (Core.Maybe Core.Text)
      -- | Optional. The name of the organization at the address.
    , organization :: (Core.Maybe Core.Text)
      -- | Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (for example, state or zip code validation in the United States).
    , postalCode :: (Core.Maybe Core.Text)
      -- | Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.
    , recipients :: (Core.Maybe [Core.Text])
      -- | Required. CLDR region code of the country\/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https:\/\/cldr.unicode.org\/ and https:\/\/www.unicode.org\/cldr\/charts\/30\/supplemental\/territory_information.html for details. Example: \"CH\" for Switzerland.
    , regionCode :: (Core.Maybe Core.Text)
      -- | The schema revision of the @PostalAddress@. This must be set to 0, which is the latest revision. All new revisions __must__ be backward compatible with old revisions.
    , revision :: (Core.Maybe Core.Int32)
      -- | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (for example, \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (Côte d\'Ivoire).
    , sortingCode :: (Core.Maybe Core.Text)
      -- | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district.
    , sublocality :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalAddress' with the minimum fields required to make a request.
newPostalAddress 
    ::  PostalAddress
newPostalAddress
  = PostalAddress{addressLines = Core.Nothing,
                  administrativeArea = Core.Nothing, languageCode = Core.Nothing,
                  locality = Core.Nothing, organization = Core.Nothing,
                  postalCode = Core.Nothing, recipients = Core.Nothing,
                  regionCode = Core.Nothing, revision = Core.Nothing,
                  sortingCode = Core.Nothing, sublocality = Core.Nothing}
instance Core.FromJSON PostalAddress where
        parseJSON
          = Core.withObject "PostalAddress"
              (\ o ->
                 PostalAddress Core.<$>
                   (o Core..:? "addressLines") Core.<*>
                     (o Core..:? "administrativeArea")
                     Core.<*> (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "locality")
                     Core.<*> (o Core..:? "organization")
                     Core.<*> (o Core..:? "postalCode")
                     Core.<*> (o Core..:? "recipients")
                     Core.<*> (o Core..:? "regionCode")
                     Core.<*> (o Core..:? "revision")
                     Core.<*> (o Core..:? "sortingCode")
                     Core.<*> (o Core..:? "sublocality"))

instance Core.ToJSON PostalAddress where
        toJSON PostalAddress{..}
          = Core.object
              (Core.catMaybes
                 [("addressLines" Core..=) Core.<$> addressLines,
                  ("administrativeArea" Core..=) Core.<$> administrativeArea,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("locality" Core..=) Core.<$> locality,
                  ("organization" Core..=) Core.<$> organization,
                  ("postalCode" Core..=) Core.<$> postalCode,
                  ("recipients" Core..=) Core.<$> recipients,
                  ("regionCode" Core..=) Core.<$> regionCode,
                  ("revision" Core..=) Core.<$> revision,
                  ("sortingCode" Core..=) Core.<$> sortingCode,
                  ("sublocality" Core..=) Core.<$> sublocality])


-- | All information pertaining to the location\'s profile.
--
-- /See:/ 'newProfile' smart constructor.
newtype Profile = Profile
    {
      -- | Required. Description of the location in your own voice, not editable by anyone else.
      description :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
newProfile 
    ::  Profile
newProfile = Profile{description = Core.Nothing}
instance Core.FromJSON Profile where
        parseJSON
          = Core.withObject "Profile"
              (\ o -> Profile Core.<$> (o Core..:? "description"))

instance Core.ToJSON Profile where
        toJSON Profile{..}
          = Core.object
              (Core.catMaybes [("description" Core..=) Core.<$> description])


-- | Information of all parent and children locations related to this one.
--
-- /See:/ 'newRelationshipData' smart constructor.
data RelationshipData = RelationshipData
    {
      -- | The list of children locations that this location has relations with.
      childrenLocations :: (Core.Maybe [RelevantLocation])
      -- | The resource name of the Chain that this location is member of. How to find Chain ID
    , parentChain :: (Core.Maybe Core.Text)
      -- | The parent location that this location has relations with.
    , parentLocation :: (Core.Maybe RelevantLocation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelationshipData' with the minimum fields required to make a request.
newRelationshipData 
    ::  RelationshipData
newRelationshipData
  = RelationshipData{childrenLocations = Core.Nothing,
                     parentChain = Core.Nothing, parentLocation = Core.Nothing}
instance Core.FromJSON RelationshipData where
        parseJSON
          = Core.withObject "RelationshipData"
              (\ o ->
                 RelationshipData Core.<$>
                   (o Core..:? "childrenLocations") Core.<*>
                     (o Core..:? "parentChain")
                     Core.<*> (o Core..:? "parentLocation"))

instance Core.ToJSON RelationshipData where
        toJSON RelationshipData{..}
          = Core.object
              (Core.catMaybes
                 [("childrenLocations" Core..=) Core.<$> childrenLocations,
                  ("parentChain" Core..=) Core.<$> parentChain,
                  ("parentLocation" Core..=) Core.<$> parentLocation])


-- | Information about another location that is related to current one. The relation can be any one of DEPARTMENT/OF or INDEPENDENT/ESTABLISHMENT_OF, and the location specified here can be on either side (parent\/child) of the location.
--
-- /See:/ 'newRelevantLocation' smart constructor.
data RelevantLocation = RelevantLocation
    {
      -- | Required. Specify the location that is on the other side of the relation by its placeID.
      placeId :: (Core.Maybe Core.Text)
      -- | Required. The type of the relationship.
    , relationType :: (Core.Maybe RelevantLocation_RelationType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelevantLocation' with the minimum fields required to make a request.
newRelevantLocation 
    ::  RelevantLocation
newRelevantLocation
  = RelevantLocation{placeId = Core.Nothing,
                     relationType = Core.Nothing}
instance Core.FromJSON RelevantLocation where
        parseJSON
          = Core.withObject "RelevantLocation"
              (\ o ->
                 RelevantLocation Core.<$>
                   (o Core..:? "placeId") Core.<*> (o Core..:? "relationType"))

instance Core.ToJSON RelevantLocation where
        toJSON RelevantLocation{..}
          = Core.object
              (Core.catMaybes
                 [("placeId" Core..=) Core.<$> placeId,
                  ("relationType" Core..=) Core.<$> relationType])


-- | Values for an attribute with a @value_type@ of REPEATED_ENUM. This consists of two lists of value IDs: those that are set (true) and those that are unset (false). Values absent are considered unknown. At least one value must be specified.
--
-- /See:/ 'newRepeatedEnumAttributeValue' smart constructor.
data RepeatedEnumAttributeValue = RepeatedEnumAttributeValue
    {
      -- | Enum values that are set.
      setValues :: (Core.Maybe [Core.Text])
      -- | Enum values that are unset.
    , unsetValues :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepeatedEnumAttributeValue' with the minimum fields required to make a request.
newRepeatedEnumAttributeValue 
    ::  RepeatedEnumAttributeValue
newRepeatedEnumAttributeValue
  = RepeatedEnumAttributeValue{setValues = Core.Nothing,
                               unsetValues = Core.Nothing}
instance Core.FromJSON RepeatedEnumAttributeValue where
        parseJSON
          = Core.withObject "RepeatedEnumAttributeValue"
              (\ o ->
                 RepeatedEnumAttributeValue Core.<$>
                   (o Core..:? "setValues") Core.<*> (o Core..:? "unsetValues"))

instance Core.ToJSON RepeatedEnumAttributeValue where
        toJSON RepeatedEnumAttributeValue{..}
          = Core.object
              (Core.catMaybes
                 [("setValues" Core..=) Core.<$> setValues,
                  ("unsetValues" Core..=) Core.<$> unsetValues])


-- | Response message for Locations.SearchChains.
--
-- /See:/ 'newSearchChainsResponse' smart constructor.
newtype SearchChainsResponse = SearchChainsResponse
    {
      -- | Chains that match the queried chain/display/name in SearchChainsRequest. If there are no matches, this field will be empty. Results are listed in order of relevance.
      chains :: (Core.Maybe [Chain])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchChainsResponse' with the minimum fields required to make a request.
newSearchChainsResponse 
    ::  SearchChainsResponse
newSearchChainsResponse
  = SearchChainsResponse{chains = Core.Nothing}
instance Core.FromJSON SearchChainsResponse where
        parseJSON
          = Core.withObject "SearchChainsResponse"
              (\ o -> SearchChainsResponse Core.<$> (o Core..:? "chains"))

instance Core.ToJSON SearchChainsResponse where
        toJSON SearchChainsResponse{..}
          = Core.object (Core.catMaybes [("chains" Core..=) Core.<$> chains])


-- | Request message for GoogleLocations.SearchGoogleLocations.
--
-- /See:/ 'newSearchGoogleLocationsRequest' smart constructor.
data SearchGoogleLocationsRequest = SearchGoogleLocationsRequest
    {
      -- | Location to search for. If provided, will find locations which match the provided location details, which must include a value for the title.
      location :: (Core.Maybe Location)
      -- | The number of matches to return. The default value is 3, with a maximum of 10. Note that latency may increase if more are requested. There is no pagination.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Text query to search for. The search results from a query string will be less accurate than if providing an exact location, but can provide more inexact matches.
    , query :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchGoogleLocationsRequest' with the minimum fields required to make a request.
newSearchGoogleLocationsRequest 
    ::  SearchGoogleLocationsRequest
newSearchGoogleLocationsRequest
  = SearchGoogleLocationsRequest{location = Core.Nothing,
                                 pageSize = Core.Nothing, query = Core.Nothing}
instance Core.FromJSON SearchGoogleLocationsRequest where
        parseJSON
          = Core.withObject "SearchGoogleLocationsRequest"
              (\ o ->
                 SearchGoogleLocationsRequest Core.<$>
                   (o Core..:? "location") Core.<*> (o Core..:? "pageSize") Core.<*>
                     (o Core..:? "query"))

instance Core.ToJSON SearchGoogleLocationsRequest where
        toJSON SearchGoogleLocationsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("location" Core..=) Core.<$> location,
                  ("pageSize" Core..=) Core.<$> pageSize,
                  ("query" Core..=) Core.<$> query])


-- | Response message for GoogleLocations.SearchGoogleLocations.
--
-- /See:/ 'newSearchGoogleLocationsResponse' smart constructor.
newtype SearchGoogleLocationsResponse = SearchGoogleLocationsResponse
    {
      -- | A collection of GoogleLocations that are potential matches to the specified request, listed in order from most to least accuracy.
      googleLocations :: (Core.Maybe [GoogleLocation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchGoogleLocationsResponse' with the minimum fields required to make a request.
newSearchGoogleLocationsResponse 
    ::  SearchGoogleLocationsResponse
newSearchGoogleLocationsResponse
  = SearchGoogleLocationsResponse{googleLocations = Core.Nothing}
instance Core.FromJSON SearchGoogleLocationsResponse where
        parseJSON
          = Core.withObject "SearchGoogleLocationsResponse"
              (\ o ->
                 SearchGoogleLocationsResponse Core.<$>
                   (o Core..:? "googleLocations"))

instance Core.ToJSON SearchGoogleLocationsResponse where
        toJSON SearchGoogleLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("googleLocations" Core..=) Core.<$> googleLocations])


-- | Service area businesses provide their service at the customer\'s location (for example, a locksmith or plumber).
--
-- /See:/ 'newServiceAreaBusiness' smart constructor.
data ServiceAreaBusiness = ServiceAreaBusiness
    {
      -- | Required. Indicates the type of the service area business.
      businessType :: (Core.Maybe ServiceAreaBusiness_BusinessType)
      -- | The area that this business serves defined through a set of places.
    , places :: (Core.Maybe Places)
      -- | Immutable. CLDR region code of the country\/region that this service area business is based in. See http:\/\/cldr.unicode.org\/ and http:\/\/www.unicode.org\/cldr\/charts\/30\/supplemental\/territory/information.html for details. Example: \"CH\" for Switzerland. This field is required for CUSTOMER/LOCATION_ONLY businesses, and is ignored otherwise. The region specified here can be different from regions for the areas that this business serves (e.g. service area businesses that provide services in regions other than the one that they are based in). If this location requires verification after creation, the address provided for verification purposes /must/ be located within this region, and the business owner or their authorized representative /must/ be able to receive postal mail at the provided verification address.
    , regionCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAreaBusiness' with the minimum fields required to make a request.
newServiceAreaBusiness 
    ::  ServiceAreaBusiness
newServiceAreaBusiness
  = ServiceAreaBusiness{businessType = Core.Nothing,
                        places = Core.Nothing, regionCode = Core.Nothing}
instance Core.FromJSON ServiceAreaBusiness where
        parseJSON
          = Core.withObject "ServiceAreaBusiness"
              (\ o ->
                 ServiceAreaBusiness Core.<$>
                   (o Core..:? "businessType") Core.<*> (o Core..:? "places") Core.<*>
                     (o Core..:? "regionCode"))

instance Core.ToJSON ServiceAreaBusiness where
        toJSON ServiceAreaBusiness{..}
          = Core.object
              (Core.catMaybes
                 [("businessType" Core..=) Core.<$> businessType,
                  ("places" Core..=) Core.<$> places,
                  ("regionCode" Core..=) Core.<$> regionCode])


-- | A message that describes a single service item. It is used to describe the type of service that the merchant provides. For example, haircut can be a service.
--
-- /See:/ 'newServiceItem' smart constructor.
data ServiceItem = ServiceItem
    {
      -- | Optional. This field will be set case of free-form services data.
      freeFormServiceItem :: (Core.Maybe FreeFormServiceItem)
      -- | Optional. Represents the monetary price of the service item. We recommend that currency_code and units should be set when including a price. This will be treated as a fixed price for the service item.
    , price :: (Core.Maybe Money)
      -- | Optional. This field will be set case of structured services data.
    , structuredServiceItem :: (Core.Maybe StructuredServiceItem)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceItem' with the minimum fields required to make a request.
newServiceItem 
    ::  ServiceItem
newServiceItem
  = ServiceItem{freeFormServiceItem = Core.Nothing,
                price = Core.Nothing, structuredServiceItem = Core.Nothing}
instance Core.FromJSON ServiceItem where
        parseJSON
          = Core.withObject "ServiceItem"
              (\ o ->
                 ServiceItem Core.<$>
                   (o Core..:? "freeFormServiceItem") Core.<*> (o Core..:? "price")
                     Core.<*> (o Core..:? "structuredServiceItem"))

instance Core.ToJSON ServiceItem where
        toJSON ServiceItem{..}
          = Core.object
              (Core.catMaybes
                 [("freeFormServiceItem" Core..=) Core.<$> freeFormServiceItem,
                  ("price" Core..=) Core.<$> price,
                  ("structuredServiceItem" Core..=) Core.<$> structuredServiceItem])


-- | A message describing a service type that the business offers.
--
-- /See:/ 'newServiceType' smart constructor.
data ServiceType = ServiceType
    {
      -- | Output only. The human-readable display name for the service type.
      displayName :: (Core.Maybe Core.Text)
      -- | Output only. A stable ID (provided by Google) for this service type.
    , serviceTypeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceType' with the minimum fields required to make a request.
newServiceType 
    ::  ServiceType
newServiceType
  = ServiceType{displayName = Core.Nothing,
                serviceTypeId = Core.Nothing}
instance Core.FromJSON ServiceType where
        parseJSON
          = Core.withObject "ServiceType"
              (\ o ->
                 ServiceType Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "serviceTypeId"))

instance Core.ToJSON ServiceType where
        toJSON ServiceType{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("serviceTypeId" Core..=) Core.<$> serviceTypeId])


-- | Represents a single time period when a location\'s operational hours differ from its normal business hours. A special hour period must represent a range of less than 24 hours. The @open_time@ and @start_date@ must predate the @close_time@ and @end_date@. The @close_time@ and @end_date@ can extend to 11:59 a.m. on the day after the specified @start_date@. For example, the following inputs are valid: start/date=2015-11-23, open/time=08:00, close/time=18:00 start/date=2015-11-23, end/date=2015-11-23, open/time=08:00, close/time=18:00 start/date=2015-11-23, end/date=2015-11-24, open/time=13:00, close/time=11:59 The following inputs are not valid: start/date=2015-11-23, open/time=13:00, close/time=11:59 start/date=2015-11-23, end/date=2015-11-24, open/time=13:00, close/time=12:00 start/date=2015-11-23, end/date=2015-11-25, open/time=08:00, close/time=18:00
--
-- /See:/ 'newSpecialHourPeriod' smart constructor.
data SpecialHourPeriod = SpecialHourPeriod
    {
      -- | Optional. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field. Must be specified if @closed@ is false.
      closeTime :: (Core.Maybe TimeOfDay')
      -- | Optional. If true, @end_date@, @open_time@, and @close_time@ are ignored, and the date specified in @start_date@ is treated as the location being closed for the entire day.
    , closed :: (Core.Maybe Core.Bool)
      -- | Optional. The calendar date this special hour period ends on. If @end_date@ field is not set, default to the date specified in @start_date@. If set, this field must be equal to or at most 1 day after @start_date@.
    , endDate :: (Core.Maybe Date)
      -- | Optional. Valid values are 00:00-24:00 where 24:00 represents midnight at the end of the specified day field. Must be specified if @closed@ is false.
    , openTime :: (Core.Maybe TimeOfDay')
      -- | Required. The calendar date this special hour period starts on.
    , startDate :: (Core.Maybe Date)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpecialHourPeriod' with the minimum fields required to make a request.
newSpecialHourPeriod 
    ::  SpecialHourPeriod
newSpecialHourPeriod
  = SpecialHourPeriod{closeTime = Core.Nothing,
                      closed = Core.Nothing, endDate = Core.Nothing,
                      openTime = Core.Nothing, startDate = Core.Nothing}
instance Core.FromJSON SpecialHourPeriod where
        parseJSON
          = Core.withObject "SpecialHourPeriod"
              (\ o ->
                 SpecialHourPeriod Core.<$>
                   (o Core..:? "closeTime") Core.<*> (o Core..:? "closed") Core.<*>
                     (o Core..:? "endDate")
                     Core.<*> (o Core..:? "openTime")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON SpecialHourPeriod where
        toJSON SpecialHourPeriod{..}
          = Core.object
              (Core.catMaybes
                 [("closeTime" Core..=) Core.<$> closeTime,
                  ("closed" Core..=) Core.<$> closed,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("openTime" Core..=) Core.<$> openTime,
                  ("startDate" Core..=) Core.<$> startDate])


-- | Represents a set of time periods when a location\'s operational hours differ from its normal business hours.
--
-- /See:/ 'newSpecialHours' smart constructor.
newtype SpecialHours = SpecialHours
    {
      -- | Required. A list of exceptions to the business\'s regular hours.
      specialHourPeriods :: (Core.Maybe [SpecialHourPeriod])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpecialHours' with the minimum fields required to make a request.
newSpecialHours 
    ::  SpecialHours
newSpecialHours = SpecialHours{specialHourPeriods = Core.Nothing}
instance Core.FromJSON SpecialHours where
        parseJSON
          = Core.withObject "SpecialHours"
              (\ o -> SpecialHours Core.<$> (o Core..:? "specialHourPeriods"))

instance Core.ToJSON SpecialHours where
        toJSON SpecialHours{..}
          = Core.object
              (Core.catMaybes
                 [("specialHourPeriods" Core..=) Core.<$> specialHourPeriods])


-- | Represents a structured service offered by the merchant. For eg: toilet_installation.
--
-- /See:/ 'newStructuredServiceItem' smart constructor.
data StructuredServiceItem = StructuredServiceItem
    {
      -- | Optional. Description of structured service item. The character limit is 300.
      description :: (Core.Maybe Core.Text)
      -- | Required. The @service_type_id@ field is a Google provided unique ID that can be found in @ServiceType@. This information is provided by @BatchGetCategories@ rpc service.
    , serviceTypeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuredServiceItem' with the minimum fields required to make a request.
newStructuredServiceItem 
    ::  StructuredServiceItem
newStructuredServiceItem
  = StructuredServiceItem{description = Core.Nothing,
                          serviceTypeId = Core.Nothing}
instance Core.FromJSON StructuredServiceItem where
        parseJSON
          = Core.withObject "StructuredServiceItem"
              (\ o ->
                 StructuredServiceItem Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "serviceTypeId"))

instance Core.ToJSON StructuredServiceItem where
        toJSON StructuredServiceItem{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("serviceTypeId" Core..=) Core.<$> serviceTypeId])


-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
    {
      -- | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
      hours :: (Core.Maybe Core.Int32)
      -- | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
    , minutes :: (Core.Maybe Core.Int32)
      -- | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
    , nanos :: (Core.Maybe Core.Int32)
      -- | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
    , seconds :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay 
    ::  TimeOfDay'
newTimeOfDay
  = TimeOfDay'{hours = Core.Nothing, minutes = Core.Nothing,
               nanos = Core.Nothing, seconds = Core.Nothing}
instance Core.FromJSON TimeOfDay' where
        parseJSON
          = Core.withObject "TimeOfDay'"
              (\ o ->
                 TimeOfDay' Core.<$>
                   (o Core..:? "hours") Core.<*> (o Core..:? "minutes") Core.<*>
                     (o Core..:? "nanos")
                     Core.<*> (o Core..:? "seconds"))

instance Core.ToJSON TimeOfDay' where
        toJSON TimeOfDay'{..}
          = Core.object
              (Core.catMaybes
                 [("hours" Core..=) Core.<$> hours,
                  ("minutes" Core..=) Core.<$> minutes,
                  ("nanos" Core..=) Core.<$> nanos,
                  ("seconds" Core..=) Core.<$> seconds])


-- | Represents a span of time that the business is open, starting on the specified open day\/time and closing on the specified close day\/time. The closing time must occur after the opening time, for example later in the same day, or on a subsequent day.
--
-- /See:/ 'newTimePeriod' smart constructor.
data TimePeriod = TimePeriod
    {
      -- | Required. Indicates the day of the week this period ends on.
      closeDay :: (Core.Maybe TimePeriod_CloseDay)
      -- | Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field.
    , closeTime :: (Core.Maybe TimeOfDay')
      -- | Required. Indicates the day of the week this period starts on.
    , openDay :: (Core.Maybe TimePeriod_OpenDay)
      -- | Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field.
    , openTime :: (Core.Maybe TimeOfDay')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimePeriod' with the minimum fields required to make a request.
newTimePeriod 
    ::  TimePeriod
newTimePeriod
  = TimePeriod{closeDay = Core.Nothing, closeTime = Core.Nothing,
               openDay = Core.Nothing, openTime = Core.Nothing}
instance Core.FromJSON TimePeriod where
        parseJSON
          = Core.withObject "TimePeriod"
              (\ o ->
                 TimePeriod Core.<$>
                   (o Core..:? "closeDay") Core.<*> (o Core..:? "closeTime") Core.<*>
                     (o Core..:? "openDay")
                     Core.<*> (o Core..:? "openTime"))

instance Core.ToJSON TimePeriod where
        toJSON TimePeriod{..}
          = Core.object
              (Core.catMaybes
                 [("closeDay" Core..=) Core.<$> closeDay,
                  ("closeTime" Core..=) Core.<$> closeTime,
                  ("openDay" Core..=) Core.<$> openDay,
                  ("openTime" Core..=) Core.<$> openTime])


-- | Values for an attribute with a @value_type@ of URL.
--
-- /See:/ 'newUriAttributeValue' smart constructor.
newtype UriAttributeValue = UriAttributeValue
    {
      -- | Required. The proposed URI value for this attribute.
      uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UriAttributeValue' with the minimum fields required to make a request.
newUriAttributeValue 
    ::  UriAttributeValue
newUriAttributeValue = UriAttributeValue{uri = Core.Nothing}
instance Core.FromJSON UriAttributeValue where
        parseJSON
          = Core.withObject "UriAttributeValue"
              (\ o -> UriAttributeValue Core.<$> (o Core..:? "uri"))

instance Core.ToJSON UriAttributeValue where
        toJSON UriAttributeValue{..}
          = Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

