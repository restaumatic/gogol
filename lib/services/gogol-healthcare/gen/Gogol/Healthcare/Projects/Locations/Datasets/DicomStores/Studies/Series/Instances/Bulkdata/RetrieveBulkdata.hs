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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Bulkdata.RetrieveBulkdata
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns uncompressed, unencoded bytes representing the referenced bulkdata tag from an instance. See <https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4 Retrieve Transaction>. For details on the implementation of RetrieveBulkdata, see <https://cloud.google.com/healthcare/docs/dicom#bulkdata-resources Bulkdata resources> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveBulkdata, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-bulkdata Retrieve bulkdata>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.bulkdata.retrieveBulkdata@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Bulkdata.RetrieveBulkdata
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdataResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.bulkdata.retrieveBulkdata@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdataResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dicomWeb" Core.:>
           Core.Capture "dicomWebPath" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] HttpBody

-- | Returns uncompressed, unencoded bytes representing the referenced bulkdata tag from an instance. See <https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4 Retrieve Transaction>. For details on the implementation of RetrieveBulkdata, see <https://cloud.google.com/healthcare/docs/dicom#bulkdata-resources Bulkdata resources> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveBulkdata, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-bulkdata Retrieve bulkdata>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The path for the @RetrieveBulkdata@ DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/bukdata\/{bulkdata_uri}@.
    , dicomWebPath :: Core.Text
      -- | Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata 
    :: 
                                                                                                Core.Text
       -- ^  Required. The path for the @RetrieveBulkdata@ DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/bukdata\/{bulkdata_uri}@. See 'dicomWebPath'.
    -> Core.Text
       -- ^  Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
    -> HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
  dicomWebPath parent
  = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata{xgafv
                                                                                                   =
                                                                                                   Core.Nothing,
                                                                                                 accessToken
                                                                                                   =
                                                                                                   Core.Nothing,
                                                                                                 callback
                                                                                                   =
                                                                                                   Core.Nothing,
                                                                                                 dicomWebPath
                                                                                                   =
                                                                                                   dicomWebPath,
                                                                                                 parent
                                                                                                   =
                                                                                                   parent,
                                                                                                 uploadType
                                                                                                   =
                                                                                                   Core.Nothing,
                                                                                                 uploadProtocol
                                                                                                   =
                                                                                                   Core.Nothing}
instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
         where
        type Rs
               HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata
             = '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdata{..}
          = go parent dicomWebPath xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesBulkdataRetrieveBulkdataResource)
                      Core.mempty

