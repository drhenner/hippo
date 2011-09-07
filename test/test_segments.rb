module Hippo::Segments
  class TestSimpleSegment < Hippo::Segments::Base
    segment_identifier 'TSS'

    field :name                 => 'Field1'
    field :name                 => 'Field2'
    field :name                 => 'Field3'
    field :name                 => 'Field4'
  end

  class TestCompoundSegment < Hippo::Segments::Base
    segment_identifier 'TCS'

    composite_field 'CompositeField1' do
      field :name => 'Field1'
      field :name => 'Field2'
      field :name => 'Field3'
    end

    composite_field 'CompositeField2' do
      field :name => 'Field4'
      field :name => 'Field5'
      field :name => 'Field6'
    end

    field :name => 'Field7'
  end
end
