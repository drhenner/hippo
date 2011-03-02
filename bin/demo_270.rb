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
    
    ts.L2000B do |loop|
      loop.HL do |seg|
        seg.HierarchicalIdNumber = ''
        seg.HierarchicalParentIdNumber = ''
        seg.HierarchicalLevelCode = ''
        seg.HierarchicalChildCode = ''
      end
      loop.L2100B do |sub_loop|
        sub_loop.NM1 do |seg|
          seg.EntityIdentifierCode1 = ''
          seg.EntityTypeQualifier = ''
          seg.NameLastOrOrganizationName = ''
          seg.NameFirst = ''
        end
        sub_loop.REF do |seg|
          seg.ReferenceIdentificationQualifier = ""
          seg.ReferenceIdentification = ""
          seg.Description = ""
          seg.ReferenceIdentifier = ""
        end
        sub_loop.N3 do |seg|
          seg.AddressInformation1 = ""
          seg.AddressInformation2 = ""
        end
        sub_loop.N4 do |seg|
					seg.CityName = ""
					seg.StateOrProvinceCode = ""
					seg.PostalCode = ""
					seg.CountryCode = ""
				end
				sub_loop.PER do |seg|
					seg.ContactFunctionCode = ""
					seg.Name = ""
				end
				sub_loop.PRV do |seg|
			    seg.ProviderCode = ""
			    seg.ReferenceIdentificationQualifier = ""
			    seg.ReferenceIdentification = ""
			    seg.StateOrProvinceCode = ""
			    seg.ProviderSpecialtyInformation = ""
			    seg.ProviderOrganizationCode = ""
			  end
      end
    end
    
    ts.L2000C do |loop|
      loop.HL do |seg|
        seg.HierarchicalIdNumber = ''
        seg.HierarchicalParentIdNumber = ''
        seg.HierarchicalLevelCode = ''
        seg.HierarchicalChildCode = ''
      end
      loop.TRN do |seg|
        seg.TraceTypeCode = rand(10 * 100)
				seg.ReferenceIdentification1 = rand(10 * 100)
				seg.OriginatingCompanyIdentifier = rand(10 * 100)
				seg.ReferenceIdentification2 = rand(10 * 100)    
      end
      loop.L2100C do |sub_loop|
        sub_loop.NM1 do |seg|
          seg.EntityIdentifierCode1 = ''
          seg.EntityTypeQualifier = ''
          seg.NameLastOrOrganizationName = ''
          seg.NameFirst = ''          
        end
        sub_loop.REF do |seg|
          seg.ReferenceIdentificationQualifier = "00"
          seg.ReferenceIdentification = "R0203"
          seg.Description = "Description"
          seg.ReferenceIdentifier = "1241"
        end
        sub_loop.N3 do |seg|
          seg.AddressInformation1 = ""
          seg.AddressInformation2 = ""
        end
        sub_loop.N4 do |seg|
					seg.CityName = ""
					seg.StateOrProvinceCode = ""
					seg.PostalCode = ""
					seg.CountryCode = ""
				end
				sub_loop.PRV do |seg|
          seg.ProviderCode = ""
          seg.ReferenceIdentificationQualifier = ""
          seg.ReferenceIdentification = ""
          seg.StateOrProvinceCode = ""
          seg.ProviderSpecialtyInformation = ""
          seg.ProviderOrganizationCode = ""			    
			  end
			  sub_loop.DMG do |seg|
          seg.DateTimePeriodFormatQualifier = ''
          seg.DateTimePeriod = ''
          seg.GenderCode = ''
          seg.MaritalStatusCode = ''
          seg.CompositeRaceOrEthnicityInformation = ''
          seg.CitizenshipStatusCode = ''
          seg.CountryCode = ''
          seg.BasisOfVerificationCode = ''
          seg.Quantity = ''
          seg.CodeListQualifierCode = ''
          seg.IndustryCode = ''
		    end
		    sub_loop.INS do |seg|
	        seg.YesNoConditionOrResponseCode = ''
	        seg.IndividualRelationshipCode = ''
	      end
	      sub_loop.DTP do |seg|
          seg.DateTimeQualifier = ''
          seg.DateTimePeriodFormatQualifier = ''
          seg.DateTimePeriod = ''
        end
        sub_loop.L2110C do |sub_loop_child|
         sub_loop_child.EQ do |seg|
          seg.ServiceTypeCode = ""
          seg.CoverageLevelCode = ""
          seg.InsuranceTypeCode = ""
         end
         sub_loop_child.AMT do |seg|
           seg.AmountQualifierCode = ''
           seg.MonetaryAmount = ''
           seg.CreditDebitFlagCode = ''
         end
         sub_loop_child.III do |seg|
          seg.CodeListQualifierCode = ""
          seg.IndustryCode = ""
         end
         sub_loop_child.REF do |seg|
           seg.ReferenceIdentificationQualifier = ""
           seg.ReferenceIdentification = ""
           seg.Description = ""
           seg.ReferenceIdentifier = ""
         end
         sub_loop_child.DTP do |seg|
           seg.DateTimeQualifier = ''
           seg.DateTimePeriodFormatQualifier = ''
           seg.DateTimePeriod = ''          
         end
        end
      end
    end  
    
    ts.L2000D do |loop|
      loop.HL do |seg|
        seg.HierarchicalIdNumber = ''
        seg.HierarchicalParentIdNumber = ''
        seg.HierarchicalLevelCode = ''
        seg.HierarchicalChildCode = ''
      end
      loop.TRN do |seg|
        seg.TraceTypeCode = rand(10 * 100)
        seg.ReferenceIdentification1 = rand(10 * 100)
        seg.OriginatingCompanyIdentifier = rand(10 * 100)
        seg.ReferenceIdentification2 = rand(10 * 100)
      end
      loop.L2100D do |sub_loop|
        sub_loop.NM1 do |seg|
          seg.EntityIdentifierCode1 = ''
          seg.EntityTypeQualifier = ''
          seg.NameLastOrOrganizationName = ''
          seg.NameFirst = ''
        end
        sub_loop.REF do |seg|
          seg.ReferenceIdentificationQualifier = ""
          seg.ReferenceIdentification = ""
          seg.Description = ""
          seg.ReferenceIdentifier = ""
        end
        sub_loop.N3 do |seg|
          seg.AddressInformation1 = ""
          seg.AddressInformation2 = ""
        end
        sub_loop.N4 do |seg|
					seg.CityName = ""
					seg.StateOrProvinceCode = ""
					seg.PostalCode = ""
					seg.CountryCode = ""
				end
				sub_loop.PRV do |seg|
          seg.ProviderCode = ""
          seg.ReferenceIdentificationQualifier = ""
          seg.ReferenceIdentification = ""
          seg.StateOrProvinceCode = ""
          seg.ProviderSpecialtyInformation = ""
          seg.ProviderOrganizationCode = ""			    
			  end
			  sub_loop.DMG do |seg|
          seg.DateTimePeriodFormatQualifier = ''
          seg.DateTimePeriod = ''
          seg.GenderCode = ''
          seg.MaritalStatusCode = ''
          seg.CompositeRaceOrEthnicityInformation = ''
          seg.CitizenshipStatusCode = ''
          seg.CountryCode = ''
          seg.BasisOfVerificationCode = ''
          seg.Quantity = ''
          seg.CodeListQualifierCode = ''
          seg.IndustryCode = ''
		    end
		    sub_loop.INS do |seg|
	        seg.YesNoConditionOrResponseCode = ''
	        seg.IndividualRelationshipCode = ''
	      end
	      sub_loop.DTP do |seg|
          seg.DateTimeQualifier = ''
          seg.DateTimePeriodFormatQualifier = ''
          seg.DateTimePeriod = ''
        end
        sub_loop.L2110D do |sub_loop_child|
          sub_loop_child.EQ do |seg|
            seg.ServiceTypeCode = ""
            seg.CoverageLevelCode = ""
            seg.InsuranceTypeCode = ""
          end
          sub_loop_child.III do |seg|
             seg.CodeListQualifierCode = ""
             seg.IndustryCode = ""
          end
          sub_loop_child.REF do |seg|
            seg.ReferenceIdentificationQualifier = ""
            seg.ReferenceIdentification = ""
            seg.Description = ""
            seg.ReferenceIdentifier = ""
          end
          sub_loop_child.DTP do |seg|
            seg.DateTimeQualifier = ''
            seg.DateTimePeriodFormatQualifier = ''
            seg.DateTimePeriod = ''
          end
        end
      end
    end
    ts.SE do |seg|
      seg.NumberOfIncludedSegments = ''
      seg.TransactionSetControlNumber = ''
    end
    puts ts.to_s 
  end #end self.run
end  #end Class Demo270

if __FILE__ == $0
  Demo270.run
end
