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
-- Module      : Gogol.MyBusinessBusinessInformation.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessBusinessInformation.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Attribute_ValueType
    Attribute_ValueType
      (
        Attribute_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED,
        Attribute_ValueType_Bool,
        Attribute_ValueType_Enum',
        Attribute_ValueType_Url,
        Attribute_ValueType_REPEATEDENUM,
        ..
      ),

    -- * AttributeMetadata_ValueType
    AttributeMetadata_ValueType
      (
        AttributeMetadata_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED,
        AttributeMetadata_ValueType_Bool,
        AttributeMetadata_ValueType_Enum',
        AttributeMetadata_ValueType_Url,
        AttributeMetadata_ValueType_REPEATEDENUM,
        ..
      ),

    -- * OpenInfo_Status
    OpenInfo_Status
      (
        OpenInfo_Status_OPENFORBUSINESSUNSPECIFIED,
        OpenInfo_Status_Open,
        OpenInfo_Status_CLOSEDPERMANENTLY,
        OpenInfo_Status_CLOSEDTEMPORARILY,
        ..
      ),

    -- * RelevantLocation_RelationType
    RelevantLocation_RelationType
      (
        RelevantLocation_RelationType_RELATIONTYPEUNSPECIFIED,
        RelevantLocation_RelationType_DEPARTMENTOF,
        RelevantLocation_RelationType_INDEPENDENTESTABLISHMENTIN,
        ..
      ),

    -- * ServiceAreaBusiness_BusinessType
    ServiceAreaBusiness_BusinessType
      (
        ServiceAreaBusiness_BusinessType_BUSINESSTYPEUNSPECIFIED,
        ServiceAreaBusiness_BusinessType_CUSTOMERLOCATIONONLY,
        ServiceAreaBusiness_BusinessType_CUSTOMERANDBUSINESSLOCATION,
        ..
      ),

    -- * TimePeriod_CloseDay
    TimePeriod_CloseDay
      (
        TimePeriod_CloseDay_DAYOFWEEKUNSPECIFIED,
        TimePeriod_CloseDay_Monday,
        TimePeriod_CloseDay_Tuesday,
        TimePeriod_CloseDay_Wednesday,
        TimePeriod_CloseDay_Thursday,
        TimePeriod_CloseDay_Friday,
        TimePeriod_CloseDay_Saturday,
        TimePeriod_CloseDay_Sunday,
        ..
      ),

    -- * TimePeriod_OpenDay
    TimePeriod_OpenDay
      (
        TimePeriod_OpenDay_DAYOFWEEKUNSPECIFIED,
        TimePeriod_OpenDay_Monday,
        TimePeriod_OpenDay_Tuesday,
        TimePeriod_OpenDay_Wednesday,
        TimePeriod_OpenDay_Thursday,
        TimePeriod_OpenDay_Friday,
        TimePeriod_OpenDay_Saturday,
        TimePeriod_OpenDay_Sunday,
        ..
      ),

    -- * CategoriesBatchGetView
    CategoriesBatchGetView
      (
        CategoriesBatchGetView_CATEGORYVIEWUNSPECIFIED,
        CategoriesBatchGetView_Basic,
        CategoriesBatchGetView_Full,
        ..
      ),

    -- * CategoriesListView
    CategoriesListView
      (
        CategoriesListView_CATEGORYVIEWUNSPECIFIED,
        CategoriesListView_Basic,
        CategoriesListView_Full,
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

-- | Output only. The type of value that this attribute contains. This should be used to determine how to interpret the value.
newtype Attribute_ValueType = Attribute_ValueType { fromAttribute_ValueType :: Core.Text }
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
pattern Attribute_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED :: Attribute_ValueType
pattern Attribute_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED = Attribute_ValueType "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED"

-- | The values for this attribute are boolean values.
pattern Attribute_ValueType_Bool :: Attribute_ValueType
pattern Attribute_ValueType_Bool = Attribute_ValueType "BOOL"

-- | The attribute has a predetermined list of available values that can be used. Metadata for this attribute will list these values.
pattern Attribute_ValueType_Enum' :: Attribute_ValueType
pattern Attribute_ValueType_Enum' = Attribute_ValueType "ENUM"

-- | The values for this attribute are URLs.
pattern Attribute_ValueType_Url :: Attribute_ValueType
pattern Attribute_ValueType_Url = Attribute_ValueType "URL"

-- | The attribute value is an enum with multiple possible values that can be explicitly set or unset.
pattern Attribute_ValueType_REPEATEDENUM :: Attribute_ValueType
pattern Attribute_ValueType_REPEATEDENUM = Attribute_ValueType "REPEATED_ENUM"

{-# COMPLETE
  Attribute_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED,
  Attribute_ValueType_Bool,
  Attribute_ValueType_Enum',
  Attribute_ValueType_Url,
  Attribute_ValueType_REPEATEDENUM,
  Attribute_ValueType #-}

-- | The value type for the attribute. Values set and retrieved should be expected to be of this type.
newtype AttributeMetadata_ValueType = AttributeMetadata_ValueType { fromAttributeMetadata_ValueType :: Core.Text }
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
pattern AttributeMetadata_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED :: AttributeMetadata_ValueType
pattern AttributeMetadata_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED = AttributeMetadata_ValueType "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED"

-- | The values for this attribute are boolean values.
pattern AttributeMetadata_ValueType_Bool :: AttributeMetadata_ValueType
pattern AttributeMetadata_ValueType_Bool = AttributeMetadata_ValueType "BOOL"

-- | The attribute has a predetermined list of available values that can be used. Metadata for this attribute will list these values.
pattern AttributeMetadata_ValueType_Enum' :: AttributeMetadata_ValueType
pattern AttributeMetadata_ValueType_Enum' = AttributeMetadata_ValueType "ENUM"

-- | The values for this attribute are URLs.
pattern AttributeMetadata_ValueType_Url :: AttributeMetadata_ValueType
pattern AttributeMetadata_ValueType_Url = AttributeMetadata_ValueType "URL"

-- | The attribute value is an enum with multiple possible values that can be explicitly set or unset.
pattern AttributeMetadata_ValueType_REPEATEDENUM :: AttributeMetadata_ValueType
pattern AttributeMetadata_ValueType_REPEATEDENUM = AttributeMetadata_ValueType "REPEATED_ENUM"

{-# COMPLETE
  AttributeMetadata_ValueType_ATTRIBUTEVALUETYPEUNSPECIFIED,
  AttributeMetadata_ValueType_Bool,
  AttributeMetadata_ValueType_Enum',
  AttributeMetadata_ValueType_Url,
  AttributeMetadata_ValueType_REPEATEDENUM,
  AttributeMetadata_ValueType #-}

-- | Required. Indicates whether or not the Location is currently open for business. All locations are open by default, unless updated to be closed.
newtype OpenInfo_Status = OpenInfo_Status { fromOpenInfo_Status :: Core.Text }
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
pattern OpenInfo_Status_OPENFORBUSINESSUNSPECIFIED :: OpenInfo_Status
pattern OpenInfo_Status_OPENFORBUSINESSUNSPECIFIED = OpenInfo_Status "OPEN_FOR_BUSINESS_UNSPECIFIED"

-- | Indicates that the location is open.
pattern OpenInfo_Status_Open :: OpenInfo_Status
pattern OpenInfo_Status_Open = OpenInfo_Status "OPEN"

-- | Indicates that the location has been permanently closed.
pattern OpenInfo_Status_CLOSEDPERMANENTLY :: OpenInfo_Status
pattern OpenInfo_Status_CLOSEDPERMANENTLY = OpenInfo_Status "CLOSED_PERMANENTLY"

-- | Indicates that the location has been temporarily closed.
pattern OpenInfo_Status_CLOSEDTEMPORARILY :: OpenInfo_Status
pattern OpenInfo_Status_CLOSEDTEMPORARILY = OpenInfo_Status "CLOSED_TEMPORARILY"

{-# COMPLETE
  OpenInfo_Status_OPENFORBUSINESSUNSPECIFIED,
  OpenInfo_Status_Open,
  OpenInfo_Status_CLOSEDPERMANENTLY,
  OpenInfo_Status_CLOSEDTEMPORARILY,
  OpenInfo_Status #-}

-- | Required. The type of the relationship.
newtype RelevantLocation_RelationType = RelevantLocation_RelationType { fromRelevantLocation_RelationType :: Core.Text }
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

-- | Type unspecified.
pattern RelevantLocation_RelationType_RELATIONTYPEUNSPECIFIED :: RelevantLocation_RelationType
pattern RelevantLocation_RelationType_RELATIONTYPEUNSPECIFIED = RelevantLocation_RelationType "RELATION_TYPE_UNSPECIFIED"

-- | This represents a relation between 2 locations which share one physical area, same brand\/upper management\/organization, but with different key attributes like store hours or phone numbers. For example, Costco Pharmacy is a department in Costco Wholesale.
pattern RelevantLocation_RelationType_DEPARTMENTOF :: RelevantLocation_RelationType
pattern RelevantLocation_RelationType_DEPARTMENTOF = RelevantLocation_RelationType "DEPARTMENT_OF"

-- | This represents the cases where 2 locations are co-located in the same physical location, but from different companies (e.g. Starbucks in a Safeway, shops in a mall).
pattern RelevantLocation_RelationType_INDEPENDENTESTABLISHMENTIN :: RelevantLocation_RelationType
pattern RelevantLocation_RelationType_INDEPENDENTESTABLISHMENTIN = RelevantLocation_RelationType "INDEPENDENT_ESTABLISHMENT_IN"

{-# COMPLETE
  RelevantLocation_RelationType_RELATIONTYPEUNSPECIFIED,
  RelevantLocation_RelationType_DEPARTMENTOF,
  RelevantLocation_RelationType_INDEPENDENTESTABLISHMENTIN,
  RelevantLocation_RelationType #-}

-- | Required. Indicates the type of the service area business.
newtype ServiceAreaBusiness_BusinessType = ServiceAreaBusiness_BusinessType { fromServiceAreaBusiness_BusinessType :: Core.Text }
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

-- | Output only. Not specified.
pattern ServiceAreaBusiness_BusinessType_BUSINESSTYPEUNSPECIFIED :: ServiceAreaBusiness_BusinessType
pattern ServiceAreaBusiness_BusinessType_BUSINESSTYPEUNSPECIFIED = ServiceAreaBusiness_BusinessType "BUSINESS_TYPE_UNSPECIFIED"

-- | Offers service only in the surrounding area (not at the business address). If a business is being updated from a CUSTOMER/AND/BUSINESS/LOCATION to a CUSTOMER/LOCATION_ONLY, the location update must include field mask @storefront_address@ and set the field to empty.
pattern ServiceAreaBusiness_BusinessType_CUSTOMERLOCATIONONLY :: ServiceAreaBusiness_BusinessType
pattern ServiceAreaBusiness_BusinessType_CUSTOMERLOCATIONONLY = ServiceAreaBusiness_BusinessType "CUSTOMER_LOCATION_ONLY"

-- | Offers service at the business address and the surrounding area.
pattern ServiceAreaBusiness_BusinessType_CUSTOMERANDBUSINESSLOCATION :: ServiceAreaBusiness_BusinessType
pattern ServiceAreaBusiness_BusinessType_CUSTOMERANDBUSINESSLOCATION = ServiceAreaBusiness_BusinessType "CUSTOMER_AND_BUSINESS_LOCATION"

{-# COMPLETE
  ServiceAreaBusiness_BusinessType_BUSINESSTYPEUNSPECIFIED,
  ServiceAreaBusiness_BusinessType_CUSTOMERLOCATIONONLY,
  ServiceAreaBusiness_BusinessType_CUSTOMERANDBUSINESSLOCATION,
  ServiceAreaBusiness_BusinessType #-}

-- | Required. Indicates the day of the week this period ends on.
newtype TimePeriod_CloseDay = TimePeriod_CloseDay { fromTimePeriod_CloseDay :: Core.Text }
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

-- | The day of the week is unspecified.
pattern TimePeriod_CloseDay_DAYOFWEEKUNSPECIFIED :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_DAYOFWEEKUNSPECIFIED = TimePeriod_CloseDay "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern TimePeriod_CloseDay_Monday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Monday = TimePeriod_CloseDay "MONDAY"

-- | Tuesday
pattern TimePeriod_CloseDay_Tuesday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Tuesday = TimePeriod_CloseDay "TUESDAY"

-- | Wednesday
pattern TimePeriod_CloseDay_Wednesday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Wednesday = TimePeriod_CloseDay "WEDNESDAY"

-- | Thursday
pattern TimePeriod_CloseDay_Thursday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Thursday = TimePeriod_CloseDay "THURSDAY"

-- | Friday
pattern TimePeriod_CloseDay_Friday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Friday = TimePeriod_CloseDay "FRIDAY"

-- | Saturday
pattern TimePeriod_CloseDay_Saturday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Saturday = TimePeriod_CloseDay "SATURDAY"

-- | Sunday
pattern TimePeriod_CloseDay_Sunday :: TimePeriod_CloseDay
pattern TimePeriod_CloseDay_Sunday = TimePeriod_CloseDay "SUNDAY"

{-# COMPLETE
  TimePeriod_CloseDay_DAYOFWEEKUNSPECIFIED,
  TimePeriod_CloseDay_Monday,
  TimePeriod_CloseDay_Tuesday,
  TimePeriod_CloseDay_Wednesday,
  TimePeriod_CloseDay_Thursday,
  TimePeriod_CloseDay_Friday,
  TimePeriod_CloseDay_Saturday,
  TimePeriod_CloseDay_Sunday,
  TimePeriod_CloseDay #-}

-- | Required. Indicates the day of the week this period starts on.
newtype TimePeriod_OpenDay = TimePeriod_OpenDay { fromTimePeriod_OpenDay :: Core.Text }
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

-- | The day of the week is unspecified.
pattern TimePeriod_OpenDay_DAYOFWEEKUNSPECIFIED :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_DAYOFWEEKUNSPECIFIED = TimePeriod_OpenDay "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern TimePeriod_OpenDay_Monday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Monday = TimePeriod_OpenDay "MONDAY"

-- | Tuesday
pattern TimePeriod_OpenDay_Tuesday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Tuesday = TimePeriod_OpenDay "TUESDAY"

-- | Wednesday
pattern TimePeriod_OpenDay_Wednesday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Wednesday = TimePeriod_OpenDay "WEDNESDAY"

-- | Thursday
pattern TimePeriod_OpenDay_Thursday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Thursday = TimePeriod_OpenDay "THURSDAY"

-- | Friday
pattern TimePeriod_OpenDay_Friday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Friday = TimePeriod_OpenDay "FRIDAY"

-- | Saturday
pattern TimePeriod_OpenDay_Saturday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Saturday = TimePeriod_OpenDay "SATURDAY"

-- | Sunday
pattern TimePeriod_OpenDay_Sunday :: TimePeriod_OpenDay
pattern TimePeriod_OpenDay_Sunday = TimePeriod_OpenDay "SUNDAY"

{-# COMPLETE
  TimePeriod_OpenDay_DAYOFWEEKUNSPECIFIED,
  TimePeriod_OpenDay_Monday,
  TimePeriod_OpenDay_Tuesday,
  TimePeriod_OpenDay_Wednesday,
  TimePeriod_OpenDay_Thursday,
  TimePeriod_OpenDay_Friday,
  TimePeriod_OpenDay_Saturday,
  TimePeriod_OpenDay_Sunday,
  TimePeriod_OpenDay #-}

-- | Required. Specifies which parts to the Category resource should be returned in the response.
newtype CategoriesBatchGetView = CategoriesBatchGetView { fromCategoriesBatchGetView :: Core.Text }
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

-- | Not specified, equivalent to CATEGORY/METADATA/ONLY.
pattern CategoriesBatchGetView_CATEGORYVIEWUNSPECIFIED :: CategoriesBatchGetView
pattern CategoriesBatchGetView_CATEGORYVIEWUNSPECIFIED = CategoriesBatchGetView "CATEGORY_VIEW_UNSPECIFIED"

-- | The server response will only include Category fields display/name, category/id and language_code. It omits any service type metadata related fields.
pattern CategoriesBatchGetView_Basic :: CategoriesBatchGetView
pattern CategoriesBatchGetView_Basic = CategoriesBatchGetView "BASIC"

-- | Returns all the fields in the response.
pattern CategoriesBatchGetView_Full :: CategoriesBatchGetView
pattern CategoriesBatchGetView_Full = CategoriesBatchGetView "FULL"

{-# COMPLETE
  CategoriesBatchGetView_CATEGORYVIEWUNSPECIFIED,
  CategoriesBatchGetView_Basic,
  CategoriesBatchGetView_Full,
  CategoriesBatchGetView #-}

-- | Required. Specifies which parts to the Category resource should be returned in the response.
newtype CategoriesListView = CategoriesListView { fromCategoriesListView :: Core.Text }
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

-- | Not specified, equivalent to CATEGORY/METADATA/ONLY.
pattern CategoriesListView_CATEGORYVIEWUNSPECIFIED :: CategoriesListView
pattern CategoriesListView_CATEGORYVIEWUNSPECIFIED = CategoriesListView "CATEGORY_VIEW_UNSPECIFIED"

-- | The server response will only include Category fields display/name, category/id and language_code. It omits any service type metadata related fields.
pattern CategoriesListView_Basic :: CategoriesListView
pattern CategoriesListView_Basic = CategoriesListView "BASIC"

-- | Returns all the fields in the response.
pattern CategoriesListView_Full :: CategoriesListView
pattern CategoriesListView_Full = CategoriesListView "FULL"

{-# COMPLETE
  CategoriesListView_CATEGORYVIEWUNSPECIFIED,
  CategoriesListView_Basic,
  CategoriesListView_Full,
  CategoriesListView #-}
