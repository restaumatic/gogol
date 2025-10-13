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
-- Module      : Gogol.MyBusinessVerifications.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessVerifications.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ComplyWithGuidelines_RecommendationReason
    ComplyWithGuidelines_RecommendationReason
      (
        ComplyWithGuidelines_RecommendationReason_RECOMMENDATIONREASONUNSPECIFIED,
        ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONSUSPENDED,
        ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONDISABLED,
        ..
      ),

    -- * GenerateInstantVerificationTokenResponse_Result
    GenerateInstantVerificationTokenResponse_Result
      (
        GenerateInstantVerificationTokenResponse_Result_RESULTUNSPECIFIED,
        GenerateInstantVerificationTokenResponse_Result_Succeeded,
        GenerateInstantVerificationTokenResponse_Result_Failed,
        ..
      ),

    -- * Verification_Method
    Verification_Method
      (
        Verification_Method_VERIFICATIONMETHODUNSPECIFIED,
        Verification_Method_Address,
        Verification_Method_Email,
        Verification_Method_PHONECALL,
        Verification_Method_Sms,
        Verification_Method_Auto,
        Verification_Method_VETTEDPARTNER,
        Verification_Method_TRUSTEDPARTNER,
        ..
      ),

    -- * Verification_State
    Verification_State
      (
        Verification_State_STATEUNSPECIFIED,
        Verification_State_Pending,
        Verification_State_Completed,
        Verification_State_Failed,
        ..
      ),

    -- * VerificationOption_VerificationMethod
    VerificationOption_VerificationMethod
      (
        VerificationOption_VerificationMethod_VERIFICATIONMETHODUNSPECIFIED,
        VerificationOption_VerificationMethod_Address,
        VerificationOption_VerificationMethod_Email,
        VerificationOption_VerificationMethod_PHONECALL,
        VerificationOption_VerificationMethod_Sms,
        VerificationOption_VerificationMethod_Auto,
        VerificationOption_VerificationMethod_VETTEDPARTNER,
        VerificationOption_VerificationMethod_TRUSTEDPARTNER,
        ..
      ),

    -- * VerifyLocationRequest_Method
    VerifyLocationRequest_Method
      (
        VerifyLocationRequest_Method_VERIFICATIONMETHODUNSPECIFIED,
        VerifyLocationRequest_Method_Address,
        VerifyLocationRequest_Method_Email,
        VerifyLocationRequest_Method_PHONECALL,
        VerifyLocationRequest_Method_Sms,
        VerifyLocationRequest_Method_Auto,
        VerifyLocationRequest_Method_VETTEDPARTNER,
        VerifyLocationRequest_Method_TRUSTEDPARTNER,
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

-- | The reason why the location is being recommended to comply with guidelines.
newtype ComplyWithGuidelines_RecommendationReason = ComplyWithGuidelines_RecommendationReason { fromComplyWithGuidelines_RecommendationReason :: Core.Text }
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
pattern ComplyWithGuidelines_RecommendationReason_RECOMMENDATIONREASONUNSPECIFIED :: ComplyWithGuidelines_RecommendationReason
pattern ComplyWithGuidelines_RecommendationReason_RECOMMENDATIONREASONUNSPECIFIED = ComplyWithGuidelines_RecommendationReason "RECOMMENDATION_REASON_UNSPECIFIED"

-- | The business location is suspended. To fix this issue, consult the <https://support.google.com/business/answer/4569145 Help Center article>.
pattern ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONSUSPENDED :: ComplyWithGuidelines_RecommendationReason
pattern ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONSUSPENDED = ComplyWithGuidelines_RecommendationReason "BUSINESS_LOCATION_SUSPENDED"

-- | The business location is disabled. To fix this issue, consult the <https://support.google.com/business/answer/9334246 Help Center article>.
pattern ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONDISABLED :: ComplyWithGuidelines_RecommendationReason
pattern ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONDISABLED = ComplyWithGuidelines_RecommendationReason "BUSINESS_LOCATION_DISABLED"

{-# COMPLETE
  ComplyWithGuidelines_RecommendationReason_RECOMMENDATIONREASONUNSPECIFIED,
  ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONSUSPENDED,
  ComplyWithGuidelines_RecommendationReason_BUSINESSLOCATIONDISABLED,
  ComplyWithGuidelines_RecommendationReason #-}

-- | Output only. The result of the instant verification token generation.
newtype GenerateInstantVerificationTokenResponse_Result = GenerateInstantVerificationTokenResponse_Result { fromGenerateInstantVerificationTokenResponse_Result :: Core.Text }
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

-- | Default value, will result in errors.
pattern GenerateInstantVerificationTokenResponse_Result_RESULTUNSPECIFIED :: GenerateInstantVerificationTokenResponse_Result
pattern GenerateInstantVerificationTokenResponse_Result_RESULTUNSPECIFIED = GenerateInstantVerificationTokenResponse_Result "RESULT_UNSPECIFIED"

-- | The instant verification token was generated successfully.
pattern GenerateInstantVerificationTokenResponse_Result_Succeeded :: GenerateInstantVerificationTokenResponse_Result
pattern GenerateInstantVerificationTokenResponse_Result_Succeeded = GenerateInstantVerificationTokenResponse_Result "SUCCEEDED"

-- | The instant verification token was not generated..
pattern GenerateInstantVerificationTokenResponse_Result_Failed :: GenerateInstantVerificationTokenResponse_Result
pattern GenerateInstantVerificationTokenResponse_Result_Failed = GenerateInstantVerificationTokenResponse_Result "FAILED"

{-# COMPLETE
  GenerateInstantVerificationTokenResponse_Result_RESULTUNSPECIFIED,
  GenerateInstantVerificationTokenResponse_Result_Succeeded,
  GenerateInstantVerificationTokenResponse_Result_Failed,
  GenerateInstantVerificationTokenResponse_Result #-}

-- | The method of the verification.
newtype Verification_Method = Verification_Method { fromVerification_Method :: Core.Text }
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

-- | Default value, will result in errors.
pattern Verification_Method_VERIFICATIONMETHODUNSPECIFIED :: Verification_Method
pattern Verification_Method_VERIFICATIONMETHODUNSPECIFIED = Verification_Method "VERIFICATION_METHOD_UNSPECIFIED"

-- | Send a postcard with a verification PIN to a specific mailing address. The PIN is used to complete verification with Google.
pattern Verification_Method_Address :: Verification_Method
pattern Verification_Method_Address = Verification_Method "ADDRESS"

-- | Send an email with a verification PIN to a specific email address. The PIN is used to complete verification with Google.
pattern Verification_Method_Email :: Verification_Method
pattern Verification_Method_Email = Verification_Method "EMAIL"

-- | Make a phone call with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern Verification_Method_PHONECALL :: Verification_Method
pattern Verification_Method_PHONECALL = Verification_Method "PHONE_CALL"

-- | Send an SMS with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern Verification_Method_Sms :: Verification_Method
pattern Verification_Method_Sms = Verification_Method "SMS"

-- | Verify the location without additional user action. This option may not be available for all locations.
pattern Verification_Method_Auto :: Verification_Method
pattern Verification_Method_Auto = Verification_Method "AUTO"

-- | This option may not be available for all locations.
pattern Verification_Method_VETTEDPARTNER :: Verification_Method
pattern Verification_Method_VETTEDPARTNER = Verification_Method "VETTED_PARTNER"

-- | Verify the location via a trusted partner.
pattern Verification_Method_TRUSTEDPARTNER :: Verification_Method
pattern Verification_Method_TRUSTEDPARTNER = Verification_Method "TRUSTED_PARTNER"

{-# COMPLETE
  Verification_Method_VERIFICATIONMETHODUNSPECIFIED,
  Verification_Method_Address,
  Verification_Method_Email,
  Verification_Method_PHONECALL,
  Verification_Method_Sms,
  Verification_Method_Auto,
  Verification_Method_VETTEDPARTNER,
  Verification_Method_TRUSTEDPARTNER,
  Verification_Method #-}

-- | The state of the verification.
newtype Verification_State = Verification_State { fromVerification_State :: Core.Text }
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

-- | Default value, will result in errors.
pattern Verification_State_STATEUNSPECIFIED :: Verification_State
pattern Verification_State_STATEUNSPECIFIED = Verification_State "STATE_UNSPECIFIED"

-- | The verification is pending.
pattern Verification_State_Pending :: Verification_State
pattern Verification_State_Pending = Verification_State "PENDING"

-- | The verification is completed.
pattern Verification_State_Completed :: Verification_State
pattern Verification_State_Completed = Verification_State "COMPLETED"

-- | The verification is failed.
pattern Verification_State_Failed :: Verification_State
pattern Verification_State_Failed = Verification_State "FAILED"

{-# COMPLETE
  Verification_State_STATEUNSPECIFIED,
  Verification_State_Pending,
  Verification_State_Completed,
  Verification_State_Failed,
  Verification_State #-}

-- | Method to verify the location.
newtype VerificationOption_VerificationMethod = VerificationOption_VerificationMethod { fromVerificationOption_VerificationMethod :: Core.Text }
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

-- | Default value, will result in errors.
pattern VerificationOption_VerificationMethod_VERIFICATIONMETHODUNSPECIFIED :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_VERIFICATIONMETHODUNSPECIFIED = VerificationOption_VerificationMethod "VERIFICATION_METHOD_UNSPECIFIED"

-- | Send a postcard with a verification PIN to a specific mailing address. The PIN is used to complete verification with Google.
pattern VerificationOption_VerificationMethod_Address :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_Address = VerificationOption_VerificationMethod "ADDRESS"

-- | Send an email with a verification PIN to a specific email address. The PIN is used to complete verification with Google.
pattern VerificationOption_VerificationMethod_Email :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_Email = VerificationOption_VerificationMethod "EMAIL"

-- | Make a phone call with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern VerificationOption_VerificationMethod_PHONECALL :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_PHONECALL = VerificationOption_VerificationMethod "PHONE_CALL"

-- | Send an SMS with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern VerificationOption_VerificationMethod_Sms :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_Sms = VerificationOption_VerificationMethod "SMS"

-- | Verify the location without additional user action. This option may not be available for all locations.
pattern VerificationOption_VerificationMethod_Auto :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_Auto = VerificationOption_VerificationMethod "AUTO"

-- | This option may not be available for all locations.
pattern VerificationOption_VerificationMethod_VETTEDPARTNER :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_VETTEDPARTNER = VerificationOption_VerificationMethod "VETTED_PARTNER"

-- | Verify the location via a trusted partner.
pattern VerificationOption_VerificationMethod_TRUSTEDPARTNER :: VerificationOption_VerificationMethod
pattern VerificationOption_VerificationMethod_TRUSTEDPARTNER = VerificationOption_VerificationMethod "TRUSTED_PARTNER"

{-# COMPLETE
  VerificationOption_VerificationMethod_VERIFICATIONMETHODUNSPECIFIED,
  VerificationOption_VerificationMethod_Address,
  VerificationOption_VerificationMethod_Email,
  VerificationOption_VerificationMethod_PHONECALL,
  VerificationOption_VerificationMethod_Sms,
  VerificationOption_VerificationMethod_Auto,
  VerificationOption_VerificationMethod_VETTEDPARTNER,
  VerificationOption_VerificationMethod_TRUSTEDPARTNER,
  VerificationOption_VerificationMethod #-}

-- | Required. Verification method.
newtype VerifyLocationRequest_Method = VerifyLocationRequest_Method { fromVerifyLocationRequest_Method :: Core.Text }
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

-- | Default value, will result in errors.
pattern VerifyLocationRequest_Method_VERIFICATIONMETHODUNSPECIFIED :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_VERIFICATIONMETHODUNSPECIFIED = VerifyLocationRequest_Method "VERIFICATION_METHOD_UNSPECIFIED"

-- | Send a postcard with a verification PIN to a specific mailing address. The PIN is used to complete verification with Google.
pattern VerifyLocationRequest_Method_Address :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_Address = VerifyLocationRequest_Method "ADDRESS"

-- | Send an email with a verification PIN to a specific email address. The PIN is used to complete verification with Google.
pattern VerifyLocationRequest_Method_Email :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_Email = VerifyLocationRequest_Method "EMAIL"

-- | Make a phone call with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern VerifyLocationRequest_Method_PHONECALL :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_PHONECALL = VerifyLocationRequest_Method "PHONE_CALL"

-- | Send an SMS with a verification PIN to a specific phone number. The PIN is used to complete verification with Google.
pattern VerifyLocationRequest_Method_Sms :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_Sms = VerifyLocationRequest_Method "SMS"

-- | Verify the location without additional user action. This option may not be available for all locations.
pattern VerifyLocationRequest_Method_Auto :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_Auto = VerifyLocationRequest_Method "AUTO"

-- | This option may not be available for all locations.
pattern VerifyLocationRequest_Method_VETTEDPARTNER :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_VETTEDPARTNER = VerifyLocationRequest_Method "VETTED_PARTNER"

-- | Verify the location via a trusted partner.
pattern VerifyLocationRequest_Method_TRUSTEDPARTNER :: VerifyLocationRequest_Method
pattern VerifyLocationRequest_Method_TRUSTEDPARTNER = VerifyLocationRequest_Method "TRUSTED_PARTNER"

{-# COMPLETE
  VerifyLocationRequest_Method_VERIFICATIONMETHODUNSPECIFIED,
  VerifyLocationRequest_Method_Address,
  VerifyLocationRequest_Method_Email,
  VerifyLocationRequest_Method_PHONECALL,
  VerifyLocationRequest_Method_Sms,
  VerifyLocationRequest_Method_Auto,
  VerifyLocationRequest_Method_VETTEDPARTNER,
  VerifyLocationRequest_Method_TRUSTEDPARTNER,
  VerifyLocationRequest_Method #-}
