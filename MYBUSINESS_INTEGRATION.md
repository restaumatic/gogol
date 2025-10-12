# Google My Business API Integration for Gogol

This document describes how to add and use Google My Business APIs with the gogol Haskell library.

## Overview

The gogol library is a comprehensive Google Services SDK for Haskell. While it supports many Google APIs, the Google My Business (now called Google Business Profile) APIs were not previously generated. This guide shows you how to add them.

## Available My Business APIs

Google has split the My Business functionality into several specialized APIs:

1. **mybusinessbusinessinformation** (Primary) - Manages business locations, categories, attributes, hours, etc.
2. **mybusinessaccountmanagement** - Account and location group management
3. **mybusinessverifications** - Business verification processes
4. **mybusinessqanda** - Questions and answers management
5. **mybusinessbusinesscalls** - Business calls tracking
6. **mybusinesslodging** - Lodging-specific data (for hotels)
7. **mybusinessnotifications** - Notifications and subscriptions
8. **mybusinessplaceactions** - Place action links
9. **businessprofileperformance** - Performance metrics and insights

## Setup Instructions

### Step 1: Fork and Clone Gogol

We've already forked gogol to the restaumatic organization:

```bash
# Clone the forked repository
cd /workspace
git clone https://github.com/restaumatic/gogol.git
cd gogol
```

### Step 2: Create Configuration Files

For each API you want to use, create a JSON configuration file in `configs/services/`:

```bash
# Example: mybusinessbusinessinformation.json
{
  "library": "mybusinessbusinessinformation",
  "canonicalName": "MyBusinessBusinessInformation"
}
```

Configuration files have been created for:
- `mybusinessbusinessinformation.json`
- `mybusinessaccountmanagement.json`
- `mybusinessverifications.json`

### Step 3: Generate the Haskell Bindings

The gogol library uses a code generator to create Haskell bindings from Google's API discovery documents.

```bash
cd /workspace/gogol

# Build the code generator
stack build gogol-gen --copy-bins --local-bin-path ./bin

# Generate all libraries (including the new ones)
make gen
```

This will:
1. Build the `gogol-gen` tool
2. Process all API models in `configs/models/`
3. Generate Haskell libraries in `lib/services/` for each configured service
4. Create modules like `Gogol.MyBusinessBusinessInformation`

### Step 4: Add to Stack Configuration

After generation, you need to add the new packages to your stack.yaml. Add these lines in the `# GENERATED` section:

```yaml
packages:
  # ... existing packages ...
  - lib/services/gogol-mybusinessbusinessinformation
  - lib/services/gogol-mybusinessaccountmanagement
  - lib/services/gogol-mybusinessverifications
```

### Step 5: Use in Your Project

Add the generated library to your project's dependencies:

#### In stack.yaml (main project)
```yaml
extra-deps:
  - git: https://github.com/restaumatic/gogol
    commit: <commit-hash-after-generation>
    subdirs:
      - lib/gogol-core
      - lib/gogol
      - lib/services/gogol-mybusinessbusinessinformation
```

#### In package.yaml (or .cabal file)
```yaml
dependencies:
  - gogol-mybusinessbusinessinformation
  - gogol  # Core library
  - gogol-core
```

## Usage Example

Here's a basic example of how to use the Google My Business API:

```haskell
{-# LANGUAGE OverloadedStrings #-}

import qualified Gogol
import qualified Gogol.MyBusinessBusinessInformation as GMB
import Gogol.Auth (Credentials, OAuth2, newOAuth2)
import Network.HTTP.Client (newManager)
import Network.HTTP.Client.TLS (tlsManagerSettings)

-- Authentication
-- You'll need OAuth2 credentials from Google Cloud Console
authenticate :: IO Credentials
authenticate = do
  -- Set up OAuth2 credentials
  -- This requires client ID, client secret, and appropriate scopes
  let scopes = ["https://www.googleapis.com/auth/business.manage"]
  -- ... implement OAuth2 flow
  undefined

-- List locations for an account
listLocations :: Text -> IO ()
listLocations accountId = do
  mgr <- newManager tlsManagerSettings
  creds <- authenticate
  env <- Gogol.newEnv mgr creds

  let parent = "accounts/" <> accountId
      readMask = "name,title,storefrontAddress,categories,phoneNumbers"

  result <- Gogol.send env $
    GMB.newMyBusinessBusinessInformationAccountsLocationsList parent
      & GMB.accountsLocationsListReadMask ?~ readMask

  print result

-- Update location information
updateLocation :: Text -> GMB.Location -> IO ()
updateLocation locationName location = do
  mgr <- newManager tlsManagerSettings
  creds <- authenticate
  env <- Gogol.newEnv mgr creds

  let updateMask = "title,phoneNumbers.primaryPhone"

  result <- Gogol.send env $
    GMB.newMyBusinessBusinessInformationLocationsPatch locationName location
      & GMB.locationsPatchUpdateMask ?~ updateMask

  print result

-- Get location details
getLocation :: Text -> IO GMB.Location
getLocation locationName = do
  mgr <- newManager tlsManagerSettings
  creds <- authenticate
  env <- Gogol.newEnv mgr creds

  let readMask = "name,title,storefrontAddress,categories,phoneNumbers,regularHours"

  Gogol.send env $
    GMB.newMyBusinessBusinessInformationLocationsGet locationName
      & GMB.locationsGetReadMask ?~ readMask
```

## API Features

### Business Information API (Primary)

The main API provides these capabilities:

**Locations Management:**
- List locations: `accountsLocationsList`
- Get location: `locationsGet`
- Create location: `accountsLocationsCreate`
- Update location: `locationsPatch`
- Delete location: `locationsDelete`

**Attributes:**
- Get attributes: `locationsGetAttributes`
- Update attributes: `locationsUpdateAttributes`
- List available attributes: `attributesList`

**Categories:**
- List categories: `categoriesList`
- Batch get categories: `categoriesBatchGet`

**Google Updates:**
- Get Google-suggested updates: `locationsGetGoogleUpdated`

**Chains:**
- Get chain info: `chainsGet`
- Search chains: `chainsSearch`

## Authentication

You need to set up OAuth2 authentication with the following scopes:

```haskell
scopes =
  [ "https://www.googleapis.com/auth/business.manage"  -- Full access
  ]
```

For read-only access, you might use:
```haskell
scopes =
  [ "https://www.googleapis.com/auth/business.readonly"
  ]
```

## API Quotas and Limits

- The My Business APIs have usage quotas
- Check the [Google Business Profile API documentation](https://developers.google.com/my-business/content/overview) for current limits
- Consider implementing rate limiting and retry logic
- Note in the API description: "If you have a quota of 0 after enabling the API, please request for GBP API access"

## Important Notes

1. **API Name Change**: Google renamed "My Business API" to "Google Business Profile API" but the internal service names still use "mybusiness"

2. **Multiple APIs**: What was once a single My Business API is now split into multiple focused APIs. Choose the ones you need.

3. **Generated Code**: The generated Haskell code includes:
   - Type definitions for all API resources
   - Smart constructors for requests
   - Lens accessors for all fields
   - Documentation from the API discovery documents

4. **Updates**: To get API updates:
   ```bash
   cd /workspace/gogol
   make full-clean  # Downloads latest API definitions
   make gen         # Regenerates everything
   ```

## Troubleshooting

### Build Issues

If you encounter GHC version mismatches:
1. Check `stack.yaml` resolver matches your GHC version
2. Use `stack --system-ghc` if you want to use system GHC
3. Or let stack install the correct GHC: `stack setup`

### API Errors

Common issues:
- **403 Forbidden**: Check OAuth scopes and API is enabled in Google Cloud Console
- **404 Not Found**: Verify account/location IDs are correct
- **Quota exceeded**: You may need to request increased quota from Google

## Resources

- [Google Business Profile API Documentation](https://developers.google.com/my-business/content/overview)
- [Gogol Documentation](https://hackage.haskell.org/package/gogol)
- [Google Cloud Console](https://console.cloud.google.com/) - Enable APIs and create credentials
- [OAuth2 Playground](https://developers.google.com/oauthplayground/) - Test authentication

## Next Steps

1. Enable the APIs in Google Cloud Console
2. Set up OAuth2 credentials
3. Generate the bindings: `make gen`
4. Add to your project dependencies
5. Implement authentication flow
6. Start making API calls

## Contributing

After generating and testing the new APIs:

1. Commit the configuration files
2. Commit the generated libraries
3. Push to the restaumatic/gogol fork
4. Consider submitting a PR to upstream gogol repository
