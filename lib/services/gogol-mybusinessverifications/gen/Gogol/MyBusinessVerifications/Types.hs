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
-- Module      : Gogol.MyBusinessVerifications.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessVerifications.Types
    (
    -- * Configuration
      myBusinessVerificationsService

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

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessVerifications.Internal.Product
import Gogol.MyBusinessVerifications.Internal.Sum

-- | Default request referring to version @v1@ of the My Business Verifications API. This contains the host and root path used as a starting point for constructing service requests.
myBusinessVerificationsService :: Core.ServiceConfig
myBusinessVerificationsService
  = Core.defaultService (Core.ServiceId "mybusinessverifications:v1")
      "mybusinessverifications.googleapis.com"
