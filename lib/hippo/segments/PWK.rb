module Hippo::Segments
  class PWK < Hippo::Segments::Base

    segment_identifier 'PWK'

    field :name                 => 'ReportTypeCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 755

    field :name                 => 'ReportTransmissionCode',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 756

    field :name                 => 'ReportCopiesNeeded',
          :sequence             => 03,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 757

    field :name                 => 'EntityIdentifierCode',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 98

    field :name                 => 'IdentificationCodeQualifier',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 66

    field :name                 => 'IdentificationCode',
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 67

    field :name                 => 'Description',
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    composite_field 'ActionsIndicated' do

      field :name                 => 'PaperworkReportActionCode',
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 704

      field :name                 => 'PaperworkReportActionCode',
            :sequence             => 02,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 704

      field :name                 => 'PaperworkReportActionCode',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 704

      field :name                 => 'PaperworkReportActionCode',
            :sequence             => 04,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 704

      field :name                 => 'PaperworkReportActionCode',
            :sequence             => 05,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 704

    end

    field :name                 => 'RequestCategoryCode',
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1525

  end
end
