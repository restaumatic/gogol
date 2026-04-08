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
-- Module      : Gogol.MyBusinessVerifications
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The My Business Verifications API provides an interface for taking verifications related actions for locations.
--
-- /See:/ <https://developers.google.com/my-business/ My Business Verifications API Reference>
module Gogol.MyBusinessVerifications
    (
    -- * Configuration
      myBusinessVerificationsService

    -- * Resources

    -- ** mybusinessverifications.locations.fetchVerificationOptions
    , MyBusinessVerificationsLocationsFetchVerificationOptionsResource
    , MyBusinessVerificationsLocationsFetchVerificationOptions (..)
    , newMyBusinessVerificationsLocationsFetchVerificationOptions

    -- ** mybusinessverifications.locations.getVoiceOfMerchantState
    , MyBusinessVerificationsLocationsGetVoiceOfMerchantStateResource
    , MyBusinessVerificationsLocationsGetVoiceOfMerchantState (..)
    , newMyBusinessVerificationsLocationsGetVoiceOfMerchantState

    -- ** mybusinessverifications.locations.verifications.complete
    , MyBusinessVerificationsLocationsVerificationsCompleteResource
    , MyBusinessVerificationsLocationsVerificationsComplete (..)
    , newMyBusinessVerificationsLocationsVerificationsComplete

    -- ** mybusinessverifications.locations.verifications.list
    , MyBusinessVerificationsLocationsVerificationsListResource
    , MyBusinessVerificationsLocationsVerificationsList (..)
    , newMyBusinessVerificationsLocationsVerificationsList

    -- ** mybusinessverifications.locations.verify
    , MyBusinessVerificationsLocationsVerifyResource
    , MyBusinessVerificationsLocationsVerify (..)
    , newMyBusinessVerificationsLocationsVerify

    -- ** mybusinessverifications.verificationTokens.generate
    , MyBusinessVerificationsVerificationTokensGenerateResource
    , MyBusinessVerificationsVerificationTokensGenerate (..)
    , newMyBusinessVerificationsVerificationTokensGenerate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddressVerificationData
    , AddressVerificationData (..)
    , newAddressVerificationData

    -- ** CompleteVerificationRequest
    , CompleteVerificationRequest (..)
    , newCompleteVerificationRequest

    -- ** CompleteVerificationResponse
    , CompleteVerificationResponse (..)
    , newCompleteVerificationResponse

    -- ** ComplyWithGuidelines
    , ComplyWithGuidelines (..)
    , newComplyWithGuidelines

    -- ** ComplyWithGuidelines_RecommendationReason
    , ComplyWithGuidelines_RecommendationReason (..)

    -- ** EmailVerificationData
    , EmailVerificationData (..)
    , newEmailVerificationData

    -- ** FetchVerificationOptionsRequest
    , FetchVerificationOptionsRequest (..)
    , newFetchVerificationOptionsRequest

    -- ** FetchVerificationOptionsResponse
    , FetchVerificationOptionsResponse (..)
    , newFetchVerificationOptionsResponse

    -- ** GenerateInstantVerificationTokenRequest
    , GenerateInstantVerificationTokenRequest (..)
    , newGenerateInstantVerificationTokenRequest

    -- ** GenerateInstantVerificationTokenResponse
    , GenerateInstantVerificationTokenResponse (..)
    , newGenerateInstantVerificationTokenResponse

    -- ** GenerateInstantVerificationTokenResponse_Result
    , GenerateInstantVerificationTokenResponse_Result (..)

    -- ** ListVerificationsResponse
    , ListVerificationsResponse (..)
    , newListVerificationsResponse

    -- ** LocationData
    , LocationData (..)
    , newLocationData

    -- ** PostalAddress
    , PostalAddress (..)
    , newPostalAddress

    -- ** ResolveOwnershipConflict
    , ResolveOwnershipConflict (..)
    , newResolveOwnershipConflict

    -- ** ServiceBusinessContext
    , ServiceBusinessContext (..)
    , newServiceBusinessContext

    -- ** Verification
    , Verification (..)
    , newVerification

    -- ** Verification_Method
    , Verification_Method (..)

    -- ** Verification_State
    , Verification_State (..)

    -- ** VerificationOption
    , VerificationOption (..)
    , newVerificationOption

    -- ** VerificationOption_VerificationMethod
    , VerificationOption_VerificationMethod (..)

    -- ** VerificationToken
    , VerificationToken (..)
    , newVerificationToken

    -- ** Verify
    , Verify (..)
    , newVerify

    -- ** VerifyLocationRequest
    , VerifyLocationRequest (..)
    , newVerifyLocationRequest

    -- ** VerifyLocationRequest_Method
    , VerifyLocationRequest_Method (..)

    -- ** VerifyLocationResponse
    , VerifyLocationResponse (..)
    , newVerifyLocationResponse

    -- ** VoiceOfMerchantState
    , VoiceOfMerchantState (..)
    , newVoiceOfMerchantState

    -- ** WaitForVoiceOfMerchant
    , WaitForVoiceOfMerchant (..)
    , newWaitForVoiceOfMerchant
    ) where

import Gogol.MyBusinessVerifications.Locations.FetchVerificationOptions
import Gogol.MyBusinessVerifications.Locations.GetVoiceOfMerchantState
import Gogol.MyBusinessVerifications.Locations.Verifications.Complete
import Gogol.MyBusinessVerifications.Locations.Verifications.List
import Gogol.MyBusinessVerifications.Locations.Verify
import Gogol.MyBusinessVerifications.Types
import Gogol.MyBusinessVerifications.VerificationTokens.Generate
