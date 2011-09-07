require_relative './test_helper'

class TestSegmentsBase < MiniTest::Unit::TestCase
  def setup; end;
  def teardown; end;

  def test_empty_segment
    seg = Hippo::Segments::TestSimpleSegment.new

    assert_equal 'TSS~', seg.to_s
  end

  def test_basic_populated_segment
    seg = Hippo::Segments::TestSimpleSegment.new

    seg.Field1 = 'TestField1'
    seg.Field2 = 'TestField2'
    seg.Field3 = 'TestField3'
    seg.Field4 = 'TestField4'

    assert_equal 'TSS*TestField1*TestField2*TestField3*TestField4~', seg.to_s
  end

  def test_empty_field_in_segment
    seg = Hippo::Segments::TestSimpleSegment.new

    seg.Field2 = 'TestField2'
    seg.Field3 = 'TestField3'
    seg.Field4 = 'TestField4'

    assert_equal 'TSS**TestField2*TestField3*TestField4~', seg.to_s

    seg = Hippo::Segments::TestSimpleSegment.new

    seg.Field2 = 'TestField2'

    assert_equal 'TSS**TestField2~', seg.to_s
  end

  def test_segment_orders_properly
    seg = Hippo::Segments::TestSimpleSegment.new

    seg.Field3 = 'TestField3'
    seg.Field2 = 'TestField2'
    seg.Field1 = 'TestField1'
    seg.Field4 = 'TestField4'

    assert_equal 'TSS*TestField1*TestField2*TestField3*TestField4~', seg.to_s
  end

  def test_assign_values_with_same_field_names
    seg = Hippo::Segments::TestSimpleSegment.new
    seg.CommonName = 'Value1'
    seg.CommonName_02 = 'Value2'

    assert_equal 'TSS*****Value1*Value2~', seg.to_s

    seg.CommonName_01 = 'Value3'
    seg.CommonName_02 = 'Value4'

    assert_equal 'TSS*****Value3*Value4~', seg.to_s
  end

  def test_compound_segment
    seg = Hippo::Segments::TestCompoundSegment.new

    seg.Field1  = 'Comp1Field1'
    seg.Field2  = 'Comp1Field2'

    assert_equal 'TCS*Comp1Field1:Comp1Field2~', seg.to_s

    seg.Field7 = 'Field7'

    assert_equal 'TCS*Comp1Field1:Comp1Field2**Field7~', seg.to_s
  end

  def test_compound_segment_with_empty_initial_fields
    seg = Hippo::Segments::TestCompoundSegment.new

    seg.Field2  = 'Comp1Field2'

    assert_equal 'TCS*:Comp1Field2~', seg.to_s
  end

  def test_compound_segment_assign_values_with_same_field_names

    seg = Hippo::Segments::TestCompoundSegment.new

    seg.CompositeCommonName = 'CompVal1'
    seg.CompositeCommonName_02 = 'CompVal2'

    assert_equal 'TCS*:::CompVal1*:::CompVal2~', seg.to_s

    seg.CompositeCommonName_1 = 'CompVal3'
    seg.CompositeCommonName_2 = 'CompVal4'

    assert_equal 'TCS*:::CompVal3*:::CompVal4~', seg.to_s
  end

  def test_assign_invalid_field_throws_error
    assert_raises(Hippo::Exceptions::InvalidField) do
      seg = Hippo::Segments::NM1.new
      seg.InvalidField = 'Error should be raised.'
    end
  end
end
