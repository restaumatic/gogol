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
-- Module      : Gogol.MyBusinessAccountManagement.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.MyBusinessAccountManagement.Internal.Product
  (

    -- * AcceptInvitationRequest
    AcceptInvitationRequest (..),
    newAcceptInvitationRequest,

    -- * Account
    Account (..),
    newAccount,

    -- * Admin
    Admin (..),
    newAdmin,

    -- * DeclineInvitationRequest
    DeclineInvitationRequest (..),
    newDeclineInvitationRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Invitation
    Invitation (..),
    newInvitation,

    -- * ListAccountAdminsResponse
    ListAccountAdminsResponse (..),
    newListAccountAdminsResponse,

    -- * ListAccountsResponse
    ListAccountsResponse (..),
    newListAccountsResponse,

    -- * ListInvitationsResponse
    ListInvitationsResponse (..),
    newListInvitationsResponse,

    -- * ListLocationAdminsResponse
    ListLocationAdminsResponse (..),
    newListLocationAdminsResponse,

    -- * OrganizationInfo
    OrganizationInfo (..),
    newOrganizationInfo,

    -- * PostalAddress
    PostalAddress (..),
    newPostalAddress,

    -- * TargetLocation
    TargetLocation (..),
    newTargetLocation,

    -- * TransferLocationRequest
    TransferLocationRequest (..),
    newTransferLocationRequest,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.MyBusinessAccountManagement.Internal.Sum

-- | Request message for AccessControl.AcceptInvitation.
--
-- /See:/ 'newAcceptInvitationRequest' smart constructor.
data AcceptInvitationRequest = AcceptInvitationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceptInvitationRequest' with the minimum fields required to make a request.
newAcceptInvitationRequest 
    ::  AcceptInvitationRequest
newAcceptInvitationRequest = AcceptInvitationRequest
instance Core.FromJSON AcceptInvitationRequest where
        parseJSON
          = Core.withObject "AcceptInvitationRequest"
              (\ o -> Core.pure AcceptInvitationRequest)

instance Core.ToJSON AcceptInvitationRequest where
        toJSON = Core.const Core.emptyObject


-- | An account is a container for your location. If you are the only user who manages locations for your business, you can use your personal Google Account. To share management of locations with multiple users, [create a business account] (https:\/\/support.google.com\/business\/answer\/6085339?ref_topic=6085325).
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
    {
      -- | Required. The name of the account. For an account of type @PERSONAL@, this is the first and last name of the user account.
      accountName :: (Core.Maybe Core.Text)
      -- | Output only. Account reference number if provisioned.
    , accountNumber :: (Core.Maybe Core.Text)
      -- | Immutable. The resource name, in the format @accounts\/{account_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Additional info for an organization. This is populated only for an organization account.
    , organizationInfo :: (Core.Maybe OrganizationInfo)
      -- | Output only. Specifies the permission level the user has for this account.
    , permissionLevel :: (Core.Maybe Account_PermissionLevel)
      -- | Required. Input only. The resource name of the account which will be the primary owner of the account being created. It should be of the form @accounts\/{account_id}@.
    , primaryOwner :: (Core.Maybe Core.Text)
      -- | Output only. Specifies the AccountRole of this account.
    , role' :: (Core.Maybe Account_Role)
      -- | Required. Contains the type of account. Accounts of type PERSONAL and ORGANIZATION cannot be created using this API.
    , type' :: (Core.Maybe Account_Type)
      -- | Output only. If verified, future locations that are created are automatically connected to Google Maps, and have Google+ pages created, without requiring moderation.
    , verificationState :: (Core.Maybe Account_VerificationState)
      -- | Output only. Indicates whether the account is vetted by Google. A vetted account is able to verify locations via the VETTED_PARTNER method.
    , vettedState :: (Core.Maybe Account_VettedState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount 
    ::  Account
newAccount
  = Account{accountName = Core.Nothing, accountNumber = Core.Nothing,
            name = Core.Nothing, organizationInfo = Core.Nothing,
            permissionLevel = Core.Nothing, primaryOwner = Core.Nothing,
            role' = Core.Nothing, type' = Core.Nothing,
            verificationState = Core.Nothing, vettedState = Core.Nothing}
instance Core.FromJSON Account where
        parseJSON
          = Core.withObject "Account"
              (\ o ->
                 Account Core.<$>
                   (o Core..:? "accountName") Core.<*> (o Core..:? "accountNumber")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "organizationInfo")
                     Core.<*> (o Core..:? "permissionLevel")
                     Core.<*> (o Core..:? "primaryOwner")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "verificationState")
                     Core.<*> (o Core..:? "vettedState"))

instance Core.ToJSON Account where
        toJSON Account{..}
          = Core.object
              (Core.catMaybes
                 [("accountName" Core..=) Core.<$> accountName,
                  ("accountNumber" Core..=) Core.<$> accountNumber,
                  ("name" Core..=) Core.<$> name,
                  ("organizationInfo" Core..=) Core.<$> organizationInfo,
                  ("permissionLevel" Core..=) Core.<$> permissionLevel,
                  ("primaryOwner" Core..=) Core.<$> primaryOwner,
                  ("role" Core..=) Core.<$> role', ("type" Core..=) Core.<$> type',
                  ("verificationState" Core..=) Core.<$> verificationState,
                  ("vettedState" Core..=) Core.<$> vettedState])


-- | An administrator of an Account or a location.
--
-- /See:/ 'newAdmin' smart constructor.
data Admin = Admin
    {
      -- | Immutable. The name of the Account resource that this Admin refers to. Used when calling locations.admins.create to invite a LocationGroup as an admin. If both this field and @admin@ are set on @CREATE@ requests, this field takes precedence and the email address in @admin@ will be ignored. Format: @accounts\/{account}@.
      account :: (Core.Maybe Core.Text)
      -- | Optional. The name of the admin. When making the initial invitation, this is the invitee\'s email address. On @GET@ calls, the user\'s email address is returned if the invitation is still pending. Otherwise, it contains the user\'s first and last names. This field is only needed to be set during admin creation.
    , admin :: (Core.Maybe Core.Text)
      -- | Immutable. The resource name. For account admins, this is in the form: @accounts\/{account_id}\/admins\/{admin_id}@ For location admins, this is in the form: @locations\/{location_id}\/admins\/{admin_id}@ This field will be ignored if set during admin creation.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Indicates whether this admin has a pending invitation for the specified resource.
    , pendingInvitation :: (Core.Maybe Core.Bool)
      -- | Required. Specifies the role that this admin uses with the specified Account or Location.
    , role' :: (Core.Maybe Admin_Role)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Admin' with the minimum fields required to make a request.
newAdmin 
    ::  Admin
newAdmin
  = Admin{account = Core.Nothing, admin = Core.Nothing,
          name = Core.Nothing, pendingInvitation = Core.Nothing,
          role' = Core.Nothing}
instance Core.FromJSON Admin where
        parseJSON
          = Core.withObject "Admin"
              (\ o ->
                 Admin Core.<$>
                   (o Core..:? "account") Core.<*> (o Core..:? "admin") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "pendingInvitation")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Admin where
        toJSON Admin{..}
          = Core.object
              (Core.catMaybes
                 [("account" Core..=) Core.<$> account,
                  ("admin" Core..=) Core.<$> admin, ("name" Core..=) Core.<$> name,
                  ("pendingInvitation" Core..=) Core.<$> pendingInvitation,
                  ("role" Core..=) Core.<$> role'])


-- | Request message for AccessControl.DeclineInvitation.
--
-- /See:/ 'newDeclineInvitationRequest' smart constructor.
data DeclineInvitationRequest = DeclineInvitationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeclineInvitationRequest' with the minimum fields required to make a request.
newDeclineInvitationRequest 
    ::  DeclineInvitationRequest
newDeclineInvitationRequest = DeclineInvitationRequest
instance Core.FromJSON DeclineInvitationRequest where
        parseJSON
          = Core.withObject "DeclineInvitationRequest"
              (\ o -> Core.pure DeclineInvitationRequest)

instance Core.ToJSON DeclineInvitationRequest where
        toJSON = Core.const Core.emptyObject


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


-- | Represents a pending invitation.
--
-- /See:/ 'newInvitation' smart constructor.
data Invitation = Invitation
    {
      -- | Required. The resource name for the invitation. @accounts\/{account_id}\/invitations\/{invitation_id}@.
      name :: (Core.Maybe Core.Text)
      -- | Output only. The invited role on the account.
    , role' :: (Core.Maybe Invitation_Role)
      -- | The sparsely populated account this invitation is for.
    , targetAccount :: (Core.Maybe Account)
      -- | The target location this invitation is for.
    , targetLocation :: (Core.Maybe TargetLocation)
      -- | Output only. Specifies which target types should appear in the response.
    , targetType :: (Core.Maybe Invitation_TargetType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Invitation' with the minimum fields required to make a request.
newInvitation 
    ::  Invitation
newInvitation
  = Invitation{name = Core.Nothing, role' = Core.Nothing,
               targetAccount = Core.Nothing, targetLocation = Core.Nothing,
               targetType = Core.Nothing}
instance Core.FromJSON Invitation where
        parseJSON
          = Core.withObject "Invitation"
              (\ o ->
                 Invitation Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "role") Core.<*>
                     (o Core..:? "targetAccount")
                     Core.<*> (o Core..:? "targetLocation")
                     Core.<*> (o Core..:? "targetType"))

instance Core.ToJSON Invitation where
        toJSON Invitation{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name, ("role" Core..=) Core.<$> role',
                  ("targetAccount" Core..=) Core.<$> targetAccount,
                  ("targetLocation" Core..=) Core.<$> targetLocation,
                  ("targetType" Core..=) Core.<$> targetType])


-- | Response message for AccessControl.ListAccountAdmins.
--
-- /See:/ 'newListAccountAdminsResponse' smart constructor.
newtype ListAccountAdminsResponse = ListAccountAdminsResponse
    {
      -- | A collection of Admin instances.
      accountAdmins :: (Core.Maybe [Admin])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountAdminsResponse' with the minimum fields required to make a request.
newListAccountAdminsResponse 
    ::  ListAccountAdminsResponse
newListAccountAdminsResponse
  = ListAccountAdminsResponse{accountAdmins = Core.Nothing}
instance Core.FromJSON ListAccountAdminsResponse where
        parseJSON
          = Core.withObject "ListAccountAdminsResponse"
              (\ o ->
                 ListAccountAdminsResponse Core.<$> (o Core..:? "accountAdmins"))

instance Core.ToJSON ListAccountAdminsResponse where
        toJSON ListAccountAdminsResponse{..}
          = Core.object
              (Core.catMaybes [("accountAdmins" Core..=) Core.<$> accountAdmins])


-- | Response message for Accounts.ListAccounts.
--
-- /See:/ 'newListAccountsResponse' smart constructor.
data ListAccountsResponse = ListAccountsResponse
    {
      -- | A collection of accounts to which the user has access. The personal account of the user doing the query will always be the first item of the result, unless it is filtered out.
      accounts :: (Core.Maybe [Account])
      -- | If the number of accounts exceeds the requested page size, this field is populated with a token to fetch the next page of accounts on a subsequent call to @accounts.list@. If there are no more accounts, this field is not present in the response.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
newListAccountsResponse 
    ::  ListAccountsResponse
newListAccountsResponse
  = ListAccountsResponse{accounts = Core.Nothing,
                         nextPageToken = Core.Nothing}
instance Core.FromJSON ListAccountsResponse where
        parseJSON
          = Core.withObject "ListAccountsResponse"
              (\ o ->
                 ListAccountsResponse Core.<$>
                   (o Core..:? "accounts") Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAccountsResponse where
        toJSON ListAccountsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accounts" Core..=) Core.<$> accounts,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for AccessControl.ListInvitations.
--
-- /See:/ 'newListInvitationsResponse' smart constructor.
newtype ListInvitationsResponse = ListInvitationsResponse
    {
      -- | A collection of invitations that are pending for the account. The number of invitations listed here cannot exceed 1000.
      invitations :: (Core.Maybe [Invitation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInvitationsResponse' with the minimum fields required to make a request.
newListInvitationsResponse 
    ::  ListInvitationsResponse
newListInvitationsResponse
  = ListInvitationsResponse{invitations = Core.Nothing}
instance Core.FromJSON ListInvitationsResponse where
        parseJSON
          = Core.withObject "ListInvitationsResponse"
              (\ o ->
                 ListInvitationsResponse Core.<$> (o Core..:? "invitations"))

instance Core.ToJSON ListInvitationsResponse where
        toJSON ListInvitationsResponse{..}
          = Core.object
              (Core.catMaybes [("invitations" Core..=) Core.<$> invitations])


-- | Response message for AccessControl.ListLocationAdmins.
--
-- /See:/ 'newListLocationAdminsResponse' smart constructor.
newtype ListLocationAdminsResponse = ListLocationAdminsResponse
    {
      -- | A collection of Admins.
      admins :: (Core.Maybe [Admin])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationAdminsResponse' with the minimum fields required to make a request.
newListLocationAdminsResponse 
    ::  ListLocationAdminsResponse
newListLocationAdminsResponse
  = ListLocationAdminsResponse{admins = Core.Nothing}
instance Core.FromJSON ListLocationAdminsResponse where
        parseJSON
          = Core.withObject "ListLocationAdminsResponse"
              (\ o -> ListLocationAdminsResponse Core.<$> (o Core..:? "admins"))

instance Core.ToJSON ListLocationAdminsResponse where
        toJSON ListLocationAdminsResponse{..}
          = Core.object (Core.catMaybes [("admins" Core..=) Core.<$> admins])


-- | Additional information stored for an organization.
--
-- /See:/ 'newOrganizationInfo' smart constructor.
data OrganizationInfo = OrganizationInfo
    {
      -- | Output only. The postal address for the account.
      address :: (Core.Maybe PostalAddress)
      -- | Output only. The contact number for the organization.
    , phoneNumber :: (Core.Maybe Core.Text)
      -- | Output only. The registered domain for the account.
    , registeredDomain :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrganizationInfo' with the minimum fields required to make a request.
newOrganizationInfo 
    ::  OrganizationInfo
newOrganizationInfo
  = OrganizationInfo{address = Core.Nothing,
                     phoneNumber = Core.Nothing, registeredDomain = Core.Nothing}
instance Core.FromJSON OrganizationInfo where
        parseJSON
          = Core.withObject "OrganizationInfo"
              (\ o ->
                 OrganizationInfo Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "phoneNumber") Core.<*>
                     (o Core..:? "registeredDomain"))

instance Core.ToJSON OrganizationInfo where
        toJSON OrganizationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("phoneNumber" Core..=) Core.<$> phoneNumber,
                  ("registeredDomain" Core..=) Core.<$> registeredDomain])


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


-- | Represents a target location for a pending invitation.
--
-- /See:/ 'newTargetLocation' smart constructor.
data TargetLocation = TargetLocation
    {
      -- | The address of the location to which the user is invited.
      address :: (Core.Maybe Core.Text)
      -- | The name of the location to which the user is invited.
    , locationName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetLocation' with the minimum fields required to make a request.
newTargetLocation 
    ::  TargetLocation
newTargetLocation
  = TargetLocation{address = Core.Nothing,
                   locationName = Core.Nothing}
instance Core.FromJSON TargetLocation where
        parseJSON
          = Core.withObject "TargetLocation"
              (\ o ->
                 TargetLocation Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "locationName"))

instance Core.ToJSON TargetLocation where
        toJSON TargetLocation{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("locationName" Core..=) Core.<$> locationName])


-- | Request message for AccessControl.TransferLocation.
--
-- /See:/ 'newTransferLocationRequest' smart constructor.
newtype TransferLocationRequest = TransferLocationRequest
    {
      -- | Required. Name of the account resource to transfer the location to (for example, \"accounts\/{account}\").
      destinationAccount :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferLocationRequest' with the minimum fields required to make a request.
newTransferLocationRequest 
    ::  TransferLocationRequest
newTransferLocationRequest
  = TransferLocationRequest{destinationAccount = Core.Nothing}
instance Core.FromJSON TransferLocationRequest where
        parseJSON
          = Core.withObject "TransferLocationRequest"
              (\ o ->
                 TransferLocationRequest Core.<$> (o Core..:? "destinationAccount"))

instance Core.ToJSON TransferLocationRequest where
        toJSON TransferLocationRequest{..}
          = Core.object
              (Core.catMaybes
                 [("destinationAccount" Core..=) Core.<$> destinationAccount])

