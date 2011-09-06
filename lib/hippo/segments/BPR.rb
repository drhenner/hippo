module Hippo::Segments
  class BPR < Hippo::Segments::Base

    segment_identifier 'BPR'

    field :name                 => 'TransactionHandlingCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 305

    field :name                 => 'MonetaryAmount'
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    field :name                 => 'CreditDebitFlagCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 478

    field :name                 => 'PaymentMethodCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 591

    field :name                 => 'PaymentFormatCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 812

    field :name                 => 'DfiIdNumberQualifier'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 506

    field :name                 => 'DfiIdentificationNumber'
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 3,
          :maximum              => 12,
          :required             => false,
          :data_element_number  => 507

    field :name                 => 'AccountNumberQualifier'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 569

    field :name                 => 'AccountNumber'
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 508

    field :name                 => 'OriginatingCompanyIdentifier'
          :sequence             => 10,
          :datatype             => :string,
          :minimum              => 10,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 509

    field :name                 => 'OriginatingCompanySupplementalCode'
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 9,
          :maximum              => 9,
          :required             => false,
          :data_element_number  => 510

    field :name                 => 'DfiIdNumberQualifier'
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 506

    field :name                 => 'DfiIdentificationNumber'
          :sequence             => 13,
          :datatype             => :string,
          :minimum              => 3,
          :maximum              => 12,
          :required             => false,
          :data_element_number  => 507

    field :name                 => 'AccountNumberQualifier'
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 569

    field :name                 => 'AccountNumber'
          :sequence             => 15,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 508

    field :name                 => 'Date'
          :sequence             => 16,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'BusinessFunctionCode'
          :sequence             => 17,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1048

    field :name                 => 'DfiIdNumberQualifier'
          :sequence             => 18,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 506

    field :name                 => 'DfiIdentificationNumber'
          :sequence             => 19,
          :datatype             => :string,
          :minimum              => 3,
          :maximum              => 12,
          :required             => false,
          :data_element_number  => 507

    field :name                 => 'AccountNumberQualifier'
          :sequence             => 20,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 569

    field :name                 => 'AccountNumber'
          :sequence             => 21,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 508

  end
end
