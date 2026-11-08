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
-- Module      : Gogol.MyBusinessVerifications.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessVerifications.Internal.Product
  (

    -- * AddressVerificationData
    AddressVerificationData (..),
    newAddressVerificationData,

    -- * CompleteVerificationRequest
    CompleteVerificationRequest (..),
    newCompleteVerificationRequest,

    -- * CompleteVerificationResponse
    CompleteVerificationResponse (..),
    newCompleteVerificationResponse,

    -- * ComplyWithGuidelines
    ComplyWithGuidelines (..),
    newComplyWithGuidelines,

    -- * EmailVerificationData
    EmailVerificationData (..),
    newEmailVerificationData,

    -- * FetchVerificationOptionsRequest
    FetchVerificationOptionsRequest (..),
    newFetchVerificationOptionsRequest,

    -- * FetchVerificationOptionsResponse
    FetchVerificationOptionsResponse (..),
    newFetchVerificationOptionsResponse,

    -- * GenerateInstantVerificationTokenRequest
    GenerateInstantVerificationTokenRequest (..),
    newGenerateInstantVerificationTokenRequest,

    -- * GenerateInstantVerificationTokenResponse
    GenerateInstantVerificationTokenResponse (..),
    newGenerateInstantVerificationTokenResponse,

    -- * ListVerificationsResponse
    ListVerificationsResponse (..),
    newListVerificationsResponse,

    -- * LocationData
    LocationData (..),
    newLocationData,

    -- * PostalAddress
    PostalAddress (..),
    newPostalAddress,

    -- * ResolveOwnershipConflict
    ResolveOwnershipConflict (..),
    newResolveOwnershipConflict,

    -- * ServiceBusinessContext
    ServiceBusinessContext (..),
    newServiceBusinessContext,

    -- * Verification
    Verification (..),
    newVerification,

    -- * VerificationOption
    VerificationOption (..),
    newVerificationOption,

    -- * VerificationToken
    VerificationToken (..),
    newVerificationToken,

    -- * Verify
    Verify (..),
    newVerify,

    -- * VerifyLocationRequest
    VerifyLocationRequest (..),
    newVerifyLocationRequest,

    -- * VerifyLocationResponse
    VerifyLocationResponse (..),
    newVerifyLocationResponse,

    -- * VoiceOfMerchantState
    VoiceOfMerchantState (..),
    newVoiceOfMerchantState,

    -- * WaitForVoiceOfMerchant
    WaitForVoiceOfMerchant (..),
    newWaitForVoiceOfMerchant,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Internal.Sum

-- | Display data for verifications through postcard.
--
-- /See:/ 'newAddressVerificationData' smart constructor.
data AddressVerificationData = AddressVerificationData
    {
      -- | Address that a postcard can be sent to.
      address :: (Core.Maybe PostalAddress)
      -- | Merchant\'s business name.
    , business :: (Core.Maybe Core.Text)
      -- | Expected number of days it takes to deliver a postcard to the address\'s region.
    , expectedDeliveryDaysRegion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddressVerificationData' with the minimum fields required to make a request.
newAddressVerificationData 
    ::  AddressVerificationData
newAddressVerificationData
  = AddressVerificationData{address = Core.Nothing,
                            business = Core.Nothing, expectedDeliveryDaysRegion = Core.Nothing}
instance Core.FromJSON AddressVerificationData where
        parseJSON
          = Core.withObject "AddressVerificationData"
              (\ o ->
                 AddressVerificationData Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "business") Core.<*>
                     (o Core..:? "expectedDeliveryDaysRegion"))

instance Core.ToJSON AddressVerificationData where
        toJSON AddressVerificationData{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("business" Core..=) Core.<$> business,
                  ("expectedDeliveryDaysRegion" Core..=) Core.<$>
                    expectedDeliveryDaysRegion])


-- | Request message for Verifications.CompleteVerificationAction.
--
-- /See:/ 'newCompleteVerificationRequest' smart constructor.
newtype CompleteVerificationRequest = CompleteVerificationRequest
    {
      -- | Required. PIN code received by the merchant to complete the verification.
      pin :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteVerificationRequest' with the minimum fields required to make a request.
newCompleteVerificationRequest 
    ::  CompleteVerificationRequest
newCompleteVerificationRequest
  = CompleteVerificationRequest{pin = Core.Nothing}
instance Core.FromJSON CompleteVerificationRequest where
        parseJSON
          = Core.withObject "CompleteVerificationRequest"
              (\ o -> CompleteVerificationRequest Core.<$> (o Core..:? "pin"))

instance Core.ToJSON CompleteVerificationRequest where
        toJSON CompleteVerificationRequest{..}
          = Core.object (Core.catMaybes [("pin" Core..=) Core.<$> pin])


-- | Response message for Verifications.CompleteVerificationAction.
--
-- /See:/ 'newCompleteVerificationResponse' smart constructor.
newtype CompleteVerificationResponse = CompleteVerificationResponse
    {
      -- | The completed verification.
      verification :: (Core.Maybe Verification)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteVerificationResponse' with the minimum fields required to make a request.
newCompleteVerificationResponse 
    ::  CompleteVerificationResponse
newCompleteVerificationResponse
  = CompleteVerificationResponse{verification = Core.Nothing}
instance Core.FromJSON CompleteVerificationResponse where
        parseJSON
          = Core.withObject "CompleteVerificationResponse"
              (\ o ->
                 CompleteVerificationResponse Core.<$> (o Core..:? "verification"))

instance Core.ToJSON CompleteVerificationResponse where
        toJSON CompleteVerificationResponse{..}
          = Core.object
              (Core.catMaybes [("verification" Core..=) Core.<$> verification])


-- | Indicates that the location fails to comply with our <https://support.google.com/business/answer/3038177 guidelines>.
--
-- /See:/ 'newComplyWithGuidelines' smart constructor.
newtype ComplyWithGuidelines = ComplyWithGuidelines
    {
      -- | The reason why the location is being recommended to comply with guidelines.
      recommendationReason :: (Core.Maybe ComplyWithGuidelines_RecommendationReason)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplyWithGuidelines' with the minimum fields required to make a request.
newComplyWithGuidelines 
    ::  ComplyWithGuidelines
newComplyWithGuidelines
  = ComplyWithGuidelines{recommendationReason = Core.Nothing}
instance Core.FromJSON ComplyWithGuidelines where
        parseJSON
          = Core.withObject "ComplyWithGuidelines"
              (\ o ->
                 ComplyWithGuidelines Core.<$> (o Core..:? "recommendationReason"))

instance Core.ToJSON ComplyWithGuidelines where
        toJSON ComplyWithGuidelines{..}
          = Core.object
              (Core.catMaybes
                 [("recommendationReason" Core..=) Core.<$> recommendationReason])


-- | Display data for verifications through email.
--
-- /See:/ 'newEmailVerificationData' smart constructor.
data EmailVerificationData = EmailVerificationData
    {
      -- | Domain name in the email address. e.g. \"gmail.com\" in foo\@gmail.com
      domain :: (Core.Maybe Core.Text)
      -- | Whether client is allowed to provide a different user name.
    , isUserNameEditable :: (Core.Maybe Core.Bool)
      -- | User name in the email address. e.g. \"foo\" in foo\@gmail.com
    , user :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailVerificationData' with the minimum fields required to make a request.
newEmailVerificationData 
    ::  EmailVerificationData
newEmailVerificationData
  = EmailVerificationData{domain = Core.Nothing,
                          isUserNameEditable = Core.Nothing, user = Core.Nothing}
instance Core.FromJSON EmailVerificationData where
        parseJSON
          = Core.withObject "EmailVerificationData"
              (\ o ->
                 EmailVerificationData Core.<$>
                   (o Core..:? "domain") Core.<*> (o Core..:? "isUserNameEditable")
                     Core.<*> (o Core..:? "user"))

instance Core.ToJSON EmailVerificationData where
        toJSON EmailVerificationData{..}
          = Core.object
              (Core.catMaybes
                 [("domain" Core..=) Core.<$> domain,
                  ("isUserNameEditable" Core..=) Core.<$> isUserNameEditable,
                  ("user" Core..=) Core.<$> user])


-- | Request message for Verifications.FetchVerificationOptions.
--
-- /See:/ 'newFetchVerificationOptionsRequest' smart constructor.
data FetchVerificationOptionsRequest = FetchVerificationOptionsRequest
    {
      -- | Optional. Extra context information for the verification of service businesses. Can only be applied to the locations whose business type is CUSTOMER/LOCATION/ONLY. Specifying an accurate address could enable more options. INVALID_ARGUMENT will be thrown if it is set for other business types of locations.
      context :: (Core.Maybe ServiceBusinessContext)
      -- | Required. The BCP 47 language code representing the language that is to be used for the verification process. Available options vary by language.
    , languageCode :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchVerificationOptionsRequest' with the minimum fields required to make a request.
newFetchVerificationOptionsRequest 
    :: 
                                   FetchVerificationOptionsRequest
newFetchVerificationOptionsRequest
  = FetchVerificationOptionsRequest{context = Core.Nothing,
                                    languageCode = Core.Nothing}
instance Core.FromJSON FetchVerificationOptionsRequest where
        parseJSON
          = Core.withObject "FetchVerificationOptionsRequest"
              (\ o ->
                 FetchVerificationOptionsRequest Core.<$>
                   (o Core..:? "context") Core.<*> (o Core..:? "languageCode"))

instance Core.ToJSON FetchVerificationOptionsRequest where
        toJSON FetchVerificationOptionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("context" Core..=) Core.<$> context,
                  ("languageCode" Core..=) Core.<$> languageCode])


-- | Response message for Verifications.FetchVerificationOptions.
--
-- /See:/ 'newFetchVerificationOptionsResponse' smart constructor.
newtype FetchVerificationOptionsResponse = FetchVerificationOptionsResponse
    {
      -- | The available verification options.
      options :: (Core.Maybe [VerificationOption])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchVerificationOptionsResponse' with the minimum fields required to make a request.
newFetchVerificationOptionsResponse 
    :: 
                                    FetchVerificationOptionsResponse
newFetchVerificationOptionsResponse
  = FetchVerificationOptionsResponse{options = Core.Nothing}
instance Core.FromJSON FetchVerificationOptionsResponse where
        parseJSON
          = Core.withObject "FetchVerificationOptionsResponse"
              (\ o ->
                 FetchVerificationOptionsResponse Core.<$> (o Core..:? "options"))

instance Core.ToJSON FetchVerificationOptionsResponse where
        toJSON FetchVerificationOptionsResponse{..}
          = Core.object
              (Core.catMaybes [("options" Core..=) Core.<$> options])


-- | Request message for Verifications.GenerateInstantVerificationToken.
--
-- /See:/ 'newGenerateInstantVerificationTokenRequest' smart constructor.
data GenerateInstantVerificationTokenRequest = GenerateInstantVerificationTokenRequest
    {
      -- | Immutable. The address and other details of the location to generate an instant verification token for.
      locationData :: (Core.Maybe LocationData)
      -- | The location identifier associated with an unverified listing. This is the location id generated at the time that the listing was originally created. It is the final portion of a location resource name as generated by the Google My Business API. Note: the caller must be an owner or manager of this listing in order to generate a verification token. See the </my-business/reference/rest/v4/accounts.locations location resource> documentation for more information.
    , locationId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateInstantVerificationTokenRequest' with the minimum fields required to make a request.
newGenerateInstantVerificationTokenRequest 
    :: 
                                           GenerateInstantVerificationTokenRequest
newGenerateInstantVerificationTokenRequest
  = GenerateInstantVerificationTokenRequest{locationData =
                                              Core.Nothing,
                                            locationId = Core.Nothing}
instance Core.FromJSON GenerateInstantVerificationTokenRequest
         where
        parseJSON
          = Core.withObject "GenerateInstantVerificationTokenRequest"
              (\ o ->
                 GenerateInstantVerificationTokenRequest Core.<$>
                   (o Core..:? "locationData") Core.<*> (o Core..:? "locationId"))

instance Core.ToJSON GenerateInstantVerificationTokenRequest where
        toJSON GenerateInstantVerificationTokenRequest{..}
          = Core.object
              (Core.catMaybes
                 [("locationData" Core..=) Core.<$> locationData,
                  ("locationId" Core..=) Core.<$> locationId])


-- | Response message for Verifications.GenerateInstantVerificationToken.
--
-- /See:/ 'newGenerateInstantVerificationTokenResponse' smart constructor.
data GenerateInstantVerificationTokenResponse = GenerateInstantVerificationTokenResponse
    {
      -- | The generated instant verification token.
      instantVerificationToken :: (Core.Maybe Core.Text)
      -- | Output only. The result of the instant verification token generation.
    , result :: (Core.Maybe GenerateInstantVerificationTokenResponse_Result)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateInstantVerificationTokenResponse' with the minimum fields required to make a request.
newGenerateInstantVerificationTokenResponse 
    :: 
                                            GenerateInstantVerificationTokenResponse
newGenerateInstantVerificationTokenResponse
  = GenerateInstantVerificationTokenResponse{instantVerificationToken
                                               = Core.Nothing,
                                             result = Core.Nothing}
instance Core.FromJSON GenerateInstantVerificationTokenResponse
         where
        parseJSON
          = Core.withObject "GenerateInstantVerificationTokenResponse"
              (\ o ->
                 GenerateInstantVerificationTokenResponse Core.<$>
                   (o Core..:? "instantVerificationToken") Core.<*>
                     (o Core..:? "result"))

instance Core.ToJSON GenerateInstantVerificationTokenResponse where
        toJSON GenerateInstantVerificationTokenResponse{..}
          = Core.object
              (Core.catMaybes
                 [("instantVerificationToken" Core..=) Core.<$>
                    instantVerificationToken,
                  ("result" Core..=) Core.<$> result])


-- | Response message for Verifications.ListVerifications.
--
-- /See:/ 'newListVerificationsResponse' smart constructor.
data ListVerificationsResponse = ListVerificationsResponse
    {
      -- | If the number of verifications exceeded the requested page size, this field will be populated with a token to fetch the next page of verification on a subsequent call. If there are no more attributes, this field will not be present in the response.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of the verifications.
    , verifications :: (Core.Maybe [Verification])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVerificationsResponse' with the minimum fields required to make a request.
newListVerificationsResponse 
    ::  ListVerificationsResponse
newListVerificationsResponse
  = ListVerificationsResponse{nextPageToken = Core.Nothing,
                              verifications = Core.Nothing}
instance Core.FromJSON ListVerificationsResponse where
        parseJSON
          = Core.withObject "ListVerificationsResponse"
              (\ o ->
                 ListVerificationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*> (o Core..:? "verifications"))

instance Core.ToJSON ListVerificationsResponse where
        toJSON ListVerificationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("verifications" Core..=) Core.<$> verifications])


-- | The address and other details of the location to generate an instant verification token for.
--
-- /See:/ 'newLocationData' smart constructor.
data LocationData = LocationData
    {
      -- | Immutable. A precise, accurate address to describe your business location. PO boxes or mailboxes located at remote locations are not acceptable. At this time, you can specify a maximum of five @address_lines@ values in the address.
      address :: (Core.Maybe PostalAddress)
      -- | Immutable. Name should reflect your business\'s real-world name, as used consistently on your storefront, website, and stationery, and as known to customers. Any additional information, when relevant, can be included in other fields of the resource (for example, @Address@, @Categories@). Don\'t add unnecessary information to your name (for example, prefer \"Google\" over \"Google Inc. - Mountain View Corporate Headquarters\"). Don\'t include marketing taglines, store codes, special characters, hours or closed\/open status, phone numbers, website URLs, service\/product information, location\/address or directions, or containment information (for example, \"Chase ATM in Duane Reade\").
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationData' with the minimum fields required to make a request.
newLocationData 
    ::  LocationData
newLocationData
  = LocationData{address = Core.Nothing, name = Core.Nothing}
instance Core.FromJSON LocationData where
        parseJSON
          = Core.withObject "LocationData"
              (\ o ->
                 LocationData Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "name"))

instance Core.ToJSON LocationData where
        toJSON LocationData{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("name" Core..=) Core.<$> name])


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


-- | Indicates that the location duplicates another location that is in good standing.
--
-- /See:/ 'newResolveOwnershipConflict' smart constructor.
data ResolveOwnershipConflict = ResolveOwnershipConflict
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResolveOwnershipConflict' with the minimum fields required to make a request.
newResolveOwnershipConflict 
    ::  ResolveOwnershipConflict
newResolveOwnershipConflict = ResolveOwnershipConflict
instance Core.FromJSON ResolveOwnershipConflict where
        parseJSON
          = Core.withObject "ResolveOwnershipConflict"
              (\ o -> Core.pure ResolveOwnershipConflict)

instance Core.ToJSON ResolveOwnershipConflict where
        toJSON = Core.const Core.emptyObject


-- | Additional data for service business verification.
--
-- /See:/ 'newServiceBusinessContext' smart constructor.
newtype ServiceBusinessContext = ServiceBusinessContext
    {
      -- | The verification address of the location. It is used to either enable more verification options or send a postcard.
      address :: (Core.Maybe PostalAddress)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceBusinessContext' with the minimum fields required to make a request.
newServiceBusinessContext 
    ::  ServiceBusinessContext
newServiceBusinessContext
  = ServiceBusinessContext{address = Core.Nothing}
instance Core.FromJSON ServiceBusinessContext where
        parseJSON
          = Core.withObject "ServiceBusinessContext"
              (\ o -> ServiceBusinessContext Core.<$> (o Core..:? "address"))

instance Core.ToJSON ServiceBusinessContext where
        toJSON ServiceBusinessContext{..}
          = Core.object
              (Core.catMaybes [("address" Core..=) Core.<$> address])


-- | A verification represents a verification attempt on a location.
--
-- /See:/ 'newVerification' smart constructor.
data Verification = Verification
    {
      -- | Optional. Response announcement set only if the method is VETTED_PARTNER.
      announcement :: (Core.Maybe Core.Text)
      -- | The timestamp when the verification is requested.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | The method of the verification.
    , method :: (Core.Maybe Verification_Method)
      -- | Resource name of the verification.
    , name :: (Core.Maybe Core.Text)
      -- | The state of the verification.
    , state :: (Core.Maybe Verification_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Verification' with the minimum fields required to make a request.
newVerification 
    ::  Verification
newVerification
  = Verification{announcement = Core.Nothing,
                 createTime = Core.Nothing, method = Core.Nothing,
                 name = Core.Nothing, state = Core.Nothing}
instance Core.FromJSON Verification where
        parseJSON
          = Core.withObject "Verification"
              (\ o ->
                 Verification Core.<$>
                   (o Core..:? "announcement") Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "method")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON Verification where
        toJSON Verification{..}
          = Core.object
              (Core.catMaybes
                 [("announcement" Core..=) Core.<$> announcement,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("method" Core..=) Core.<$> method, ("name" Core..=) Core.<$> name,
                  ("state" Core..=) Core.<$> state])


-- | The verification option represents how to verify the location (indicated by verification method) and where the verification will be sent to (indicated by display data).
--
-- /See:/ 'newVerificationOption' smart constructor.
data VerificationOption = VerificationOption
    {
      -- | Set only if the method is MAIL.
      addressData :: (Core.Maybe AddressVerificationData)
      -- | Set only if the method is VETTED_PARTNER.
    , announcement :: (Core.Maybe Core.Text)
      -- | Set only if the method is EMAIL.
    , emailData :: (Core.Maybe EmailVerificationData)
      -- | Set only if the method is PHONE_CALL or SMS. Phone number that the PIN will be sent to.
    , phoneNumber :: (Core.Maybe Core.Text)
      -- | Method to verify the location.
    , verificationMethod :: (Core.Maybe VerificationOption_VerificationMethod)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerificationOption' with the minimum fields required to make a request.
newVerificationOption 
    ::  VerificationOption
newVerificationOption
  = VerificationOption{addressData = Core.Nothing,
                       announcement = Core.Nothing, emailData = Core.Nothing,
                       phoneNumber = Core.Nothing, verificationMethod = Core.Nothing}
instance Core.FromJSON VerificationOption where
        parseJSON
          = Core.withObject "VerificationOption"
              (\ o ->
                 VerificationOption Core.<$>
                   (o Core..:? "addressData") Core.<*> (o Core..:? "announcement")
                     Core.<*> (o Core..:? "emailData")
                     Core.<*> (o Core..:? "phoneNumber")
                     Core.<*> (o Core..:? "verificationMethod"))

instance Core.ToJSON VerificationOption where
        toJSON VerificationOption{..}
          = Core.object
              (Core.catMaybes
                 [("addressData" Core..=) Core.<$> addressData,
                  ("announcement" Core..=) Core.<$> announcement,
                  ("emailData" Core..=) Core.<$> emailData,
                  ("phoneNumber" Core..=) Core.<$> phoneNumber,
                  ("verificationMethod" Core..=) Core.<$> verificationMethod])


-- | Token generated by a vetted <https://support.google.com/business/answer/7674102 partner>.
--
-- /See:/ 'newVerificationToken' smart constructor.
newtype VerificationToken = VerificationToken
    {
      -- | The token string.
      tokenString :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerificationToken' with the minimum fields required to make a request.
newVerificationToken 
    ::  VerificationToken
newVerificationToken
  = VerificationToken{tokenString = Core.Nothing}
instance Core.FromJSON VerificationToken where
        parseJSON
          = Core.withObject "VerificationToken"
              (\ o -> VerificationToken Core.<$> (o Core..:? "tokenString"))

instance Core.ToJSON VerificationToken where
        toJSON VerificationToken{..}
          = Core.object
              (Core.catMaybes [("tokenString" Core..=) Core.<$> tokenString])


-- | Indicates that the location requires verification. Contains information about the current verification actions performed on the location.
--
-- /See:/ 'newVerify' smart constructor.
newtype Verify = Verify
    {
      -- | Indicates whether a verification process has already started, and can be completed by the location.
      hasPendingVerification :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Verify' with the minimum fields required to make a request.
newVerify 
    ::  Verify
newVerify = Verify{hasPendingVerification = Core.Nothing}
instance Core.FromJSON Verify where
        parseJSON
          = Core.withObject "Verify"
              (\ o -> Verify Core.<$> (o Core..:? "hasPendingVerification"))

instance Core.ToJSON Verify where
        toJSON Verify{..}
          = Core.object
              (Core.catMaybes
                 [("hasPendingVerification" Core..=) Core.<$>
                    hasPendingVerification])


-- | Request message for Verifications.VerifyLocation.
--
-- /See:/ 'newVerifyLocationRequest' smart constructor.
data VerifyLocationRequest = VerifyLocationRequest
    {
      -- | Optional. Extra context information for the verification of service businesses. It is only required for the locations whose business type is CUSTOMER/LOCATION/ONLY. For ADDRESS verification, the address will be used to send out postcard. For other methods, it should be the same as the one that is passed to GetVerificationOptions. INVALID_ARGUMENT will be thrown if it is set for other types of business locations.
      context :: (Core.Maybe ServiceBusinessContext)
      -- | Optional. The input for EMAIL method. Email address where the PIN should be sent to. An email address is accepted only if it is one of the addresses provided by FetchVerificationOptions. If the EmailVerificationData has is/user/name_editable set to true, the client may specify a different user name (local-part) but must match the domain name.
    , emailAddress :: (Core.Maybe Core.Text)
      -- | Optional. The BCP 47 language code representing the language that is to be used for the verification process.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. The input for ADDRESS method. Contact name the mail should be sent to.
    , mailerContact :: (Core.Maybe Core.Text)
      -- | Required. Verification method.
    , method :: (Core.Maybe VerifyLocationRequest_Method)
      -- | Optional. The input for PHONE_CALL\/SMS method The phone number that should be called or be sent SMS to. It must be one of the phone numbers in the eligible options.
    , phoneNumber :: (Core.Maybe Core.Text)
      -- | Optional. The input for VETTED_PARTNER method available to select <https://support.google.com/business/answer/7674102 partners.> The input is not needed for a vetted account. Token that is associated to the location. Token that is associated to the location.
    , token :: (Core.Maybe VerificationToken)
      -- | The input for TRUSTED_PARTNER method The verification token that is associated to the location.
    , trustedPartnerToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyLocationRequest' with the minimum fields required to make a request.
newVerifyLocationRequest 
    ::  VerifyLocationRequest
newVerifyLocationRequest
  = VerifyLocationRequest{context = Core.Nothing,
                          emailAddress = Core.Nothing, languageCode = Core.Nothing,
                          mailerContact = Core.Nothing, method = Core.Nothing,
                          phoneNumber = Core.Nothing, token = Core.Nothing,
                          trustedPartnerToken = Core.Nothing}
instance Core.FromJSON VerifyLocationRequest where
        parseJSON
          = Core.withObject "VerifyLocationRequest"
              (\ o ->
                 VerifyLocationRequest Core.<$>
                   (o Core..:? "context") Core.<*> (o Core..:? "emailAddress")
                     Core.<*> (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "mailerContact")
                     Core.<*> (o Core..:? "method")
                     Core.<*> (o Core..:? "phoneNumber")
                     Core.<*> (o Core..:? "token")
                     Core.<*> (o Core..:? "trustedPartnerToken"))

instance Core.ToJSON VerifyLocationRequest where
        toJSON VerifyLocationRequest{..}
          = Core.object
              (Core.catMaybes
                 [("context" Core..=) Core.<$> context,
                  ("emailAddress" Core..=) Core.<$> emailAddress,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("mailerContact" Core..=) Core.<$> mailerContact,
                  ("method" Core..=) Core.<$> method,
                  ("phoneNumber" Core..=) Core.<$> phoneNumber,
                  ("token" Core..=) Core.<$> token,
                  ("trustedPartnerToken" Core..=) Core.<$> trustedPartnerToken])


-- | Response message for Verifications.VerifyLocation.
--
-- /See:/ 'newVerifyLocationResponse' smart constructor.
newtype VerifyLocationResponse = VerifyLocationResponse
    {
      -- | The created verification request.
      verification :: (Core.Maybe Verification)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyLocationResponse' with the minimum fields required to make a request.
newVerifyLocationResponse 
    ::  VerifyLocationResponse
newVerifyLocationResponse
  = VerifyLocationResponse{verification = Core.Nothing}
instance Core.FromJSON VerifyLocationResponse where
        parseJSON
          = Core.withObject "VerifyLocationResponse"
              (\ o ->
                 VerifyLocationResponse Core.<$> (o Core..:? "verification"))

instance Core.ToJSON VerifyLocationResponse where
        toJSON VerifyLocationResponse{..}
          = Core.object
              (Core.catMaybes [("verification" Core..=) Core.<$> verification])


-- | Response message for VoiceOfMerchant.GetVoiceOfMerchantState.
--
-- /See:/ 'newVoiceOfMerchantState' smart constructor.
data VoiceOfMerchantState = VoiceOfMerchantState
    {
      -- | The location fails to comply with our <https://support.google.com/business/answer/3038177 guidelines> and requires additional steps for reinstatement. To fix this issue, consult the <https://support.google.com/business/answer/4569145 Help Center Article>.
      complyWithGuidelines :: (Core.Maybe ComplyWithGuidelines)
      -- | Indicates whether the location has the authority (ownership) over the business on Google. If true, another location cannot take over and become the dominant listing on Maps. However, edits will not become live unless Voice of Merchant is gained (i.e. has/voice/of_merchant is true).
    , hasBusinessAuthority :: (Core.Maybe Core.Bool)
      -- | Indicates whether the location is in good standing and has control over the business on Google. Any edits made to the location will propagate to Maps after passing the review phase.
    , hasVoiceOfMerchant :: (Core.Maybe Core.Bool)
      -- | This location duplicates another location that is in good standing. If you have access to the location in good standing, use that location\'s id to perform operations. Otherwise, request access from the current owner.
    , resolveOwnershipConflict :: (Core.Maybe ResolveOwnershipConflict)
      -- | Start or continue the verification process.
    , verify :: (Core.Maybe Verify)
      -- | Wait to gain Voice of Merchant. The location is under review for quality purposes.
    , waitForVoiceOfMerchant :: (Core.Maybe WaitForVoiceOfMerchant)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoiceOfMerchantState' with the minimum fields required to make a request.
newVoiceOfMerchantState 
    ::  VoiceOfMerchantState
newVoiceOfMerchantState
  = VoiceOfMerchantState{complyWithGuidelines = Core.Nothing,
                         hasBusinessAuthority = Core.Nothing,
                         hasVoiceOfMerchant = Core.Nothing,
                         resolveOwnershipConflict = Core.Nothing, verify = Core.Nothing,
                         waitForVoiceOfMerchant = Core.Nothing}
instance Core.FromJSON VoiceOfMerchantState where
        parseJSON
          = Core.withObject "VoiceOfMerchantState"
              (\ o ->
                 VoiceOfMerchantState Core.<$>
                   (o Core..:? "complyWithGuidelines") Core.<*>
                     (o Core..:? "hasBusinessAuthority")
                     Core.<*> (o Core..:? "hasVoiceOfMerchant")
                     Core.<*> (o Core..:? "resolveOwnershipConflict")
                     Core.<*> (o Core..:? "verify")
                     Core.<*> (o Core..:? "waitForVoiceOfMerchant"))

instance Core.ToJSON VoiceOfMerchantState where
        toJSON VoiceOfMerchantState{..}
          = Core.object
              (Core.catMaybes
                 [("complyWithGuidelines" Core..=) Core.<$> complyWithGuidelines,
                  ("hasBusinessAuthority" Core..=) Core.<$> hasBusinessAuthority,
                  ("hasVoiceOfMerchant" Core..=) Core.<$> hasVoiceOfMerchant,
                  ("resolveOwnershipConflict" Core..=) Core.<$>
                    resolveOwnershipConflict,
                  ("verify" Core..=) Core.<$> verify,
                  ("waitForVoiceOfMerchant" Core..=) Core.<$>
                    waitForVoiceOfMerchant])


-- | Indicates that the location will gain voice of merchant after passing review.
--
-- /See:/ 'newWaitForVoiceOfMerchant' smart constructor.
data WaitForVoiceOfMerchant = WaitForVoiceOfMerchant
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaitForVoiceOfMerchant' with the minimum fields required to make a request.
newWaitForVoiceOfMerchant 
    ::  WaitForVoiceOfMerchant
newWaitForVoiceOfMerchant = WaitForVoiceOfMerchant
instance Core.FromJSON WaitForVoiceOfMerchant where
        parseJSON
          = Core.withObject "WaitForVoiceOfMerchant"
              (\ o -> Core.pure WaitForVoiceOfMerchant)

instance Core.ToJSON WaitForVoiceOfMerchant where
        toJSON = Core.const Core.emptyObject

