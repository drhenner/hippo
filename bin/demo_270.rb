require './lib/hippo.rb'
require 'pp'

class Demo270
  def self.run
    ts = Hippo::TransactionSets::HIPAA_270::Base.new

    ts.ST do |seg|
      seg.TransactionSetIdentifierCode = "270"
      seg.TransactionSetControlNumber = rand(10 * 100)
    end

    ts.BHT do |seg|
      seg.HierarchicalStructureCode = '0001'
      seg.TransactionSetPurposeCode = '00'
      seg.ReferenceIdentification = ''
      seg.Date = ''
      seg.Time = ''
      seg.TransactionTypeCode = ''
    end
    ts.L2000A do |loop|
      loop.HL do |seg|
        seg.HierarchicalIdNumber = ''
        seg.HierarchicalParentIdNumber = ''
        seg.HierarchicalLevelCode = ''
        seg.HierarchicalChildCode = ''
      end 
      loop.L2100A do |sub_loop|
        sub_loop.NM1 do |seg|
          seg.EntityIdentifierCode1 = ''
          seg.EntityTypeQualifier = ''
          seg.NameLastOrOrganizationName = ''
          seg.NameFirst = ''
        end
      end
    end
    puts ts.to_s 
  end #end self.run
end  #end Class Demo270

if __FILE__ == $0
  Demo270.run
end