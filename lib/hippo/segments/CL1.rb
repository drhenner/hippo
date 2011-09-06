module Hippo::Segments
  class CL1 < Hippo::Segments::Base

    segment_identifier 'CL1'

    field :name                 => 'AdmissionTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1315

    field :name                 => 'AdmissionSourceCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1314

    field :name                 => 'PatientStatusCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1352

    field :name                 => 'NursingHomeResidentialStatusCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1345

  end
end
