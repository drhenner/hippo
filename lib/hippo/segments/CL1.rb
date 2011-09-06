module Hippo::Segments
  class CL1 < Hippo::Segments::Base

    segment_identifier 'CL1'

    field :name                 => 'AdmissionTypeCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1315

    field :name                 => 'AdmissionSourceCode'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1314

    field :name                 => 'PatientStatusCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1352

    field :name                 => 'NursingHomeResidentialStatusCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1345

  end
end
