require './lib/hippo.rb'
require 'pp'

class Demo276
	def self.run
		ts = Hippo::TransactionSets::HIPAA_276::Base.new

		ts.ST do |seg|
			seg.TransactionSetIdentifierCode = rand(10 * 100)
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
				sub_loop.PER do |seg|
					seg.ContactFunctionCode = ''
					seg.Name = ''
					seg.CommunicationNumberQualifier1 = ''
					seg.CommunicationNumber1 = ''
					seg.CommunicationNumberQualifier2 = ''
					seg.CommunicationNumber2 = ''
					seg.CommunicationNumberQualifier3 = ''
					seg.CommunicationNumber3 = ''
					seg.ContactInquiryReference = ''
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
			end
		end

		ts.L2000C do |loop|
			loop.HL do |seg|
				seg.HierarchicalIdNumber = ''
				seg.HierarchicalParentIdNumber = ''
				seg.HierarchicalLevelCode = ''
				seg.HierarchicalChildCode = ''
			end
			loop.L2100C do |sub_loop|
				sub_loop.NM1 do |seg|
					seg.EntityIdentifierCode1 = ''
					seg.EntityTypeQualifier = ''
					seg.NameLastOrOrganizationName = ''
					seg.NameFirst = ''  
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
			loop.DMG do |seg|
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
			loop.L2100D do |sub_loop|
				sub_loop.NM1 do |seg|
					seg.EntityIdentifierCode1 = ''
					seg.EntityTypeQualifier = ''
					seg.NameLastOrOrganizationName = ''
					seg.NameFirst = ''
				end
			end
			loop.L2200D do |sub_loop|
				sub_loop.TRN do |seg|
					seg.TraceTypeCode = rand(10 * 100)
					seg.ReferenceIdentification1 = rand(10 * 100)
					seg.OriginatingCompanyIdentifier = rand(10 * 100)
					seg.ReferenceIdentification2 = rand(10 * 100)
				end
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.AMT do |seg|
					seg.AmountQualifierCode = ''
					seg.MonetaryAmount = ''
					seg.CreditDebitFlagCode = ''
				end
				sub_loop.DTP do |seg|
					seg.DateTimeQualifier = ''
					seg.DateTimePeriodFormatQualifier = ''
					seg.DateTimePeriod = ''
				end
				sub_loop.L2210D do |sub_loop_child|
					sub_loop_child.SVC do |seg|
						#seg.CompositeMedicalProcedureIdentifier1 do |seg|
						seg.ProductServiceID = ''
						seg.ProcedureModifier1 = ''
						seg.ProcedureModifier2 = ''
						seg.ProcedureModifier3 = ''
						seg.ProcedureModifier4 = ''
						seg.Description = ''
						#end

						seg.MonetaryAmount1 = ''
						seg.MonetaryAmount2 = ''
						seg.ProductServiceId = ''
						seg.Quantity1 = ''

						seg.OriginalProductServiceIDQualifier = ''
						seg.OriginalProductServiceID = ''
						seg.OriginalProcedureModifier1 = ''
						seg.OriginalProcedureModifier2 = ''
						seg.OriginalProcedureModifier3 = ''
						seg.OriginalProcedureModifier4 = ''
						seg.OriginalDescription = ''
						seg.Quantity2 = ''
					end

					sub_loop_child.REF do |seg|
						seg.ReferenceIdentificationQualifier = "00"
						seg.ReferenceIdentification = "R0203"
						seg.Description = "Description"
						seg.ReferenceIdentifier = "1241"
					end
					sub_loop_child.DTP do |seg|
						seg.DateTimeQualifier = ''
						seg.DateTimePeriodFormatQualifier = ''
						seg.DateTimePeriod = ''
					end
				end
			end
		end

		ts.L2000E do |loop|
			loop.HL do |seg|
				seg.HierarchicalIdNumber = ''
				seg.HierarchicalParentIdNumber = ''
				seg.HierarchicalLevelCode = ''
				seg.HierarchicalChildCode = ''
			end
			loop.DMG do |seg|
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
			loop.L2100E do |sub_loop|
				sub_loop.NM1 do |seg|
					seg.EntityIdentifierCode1 = ''
					seg.EntityTypeQualifier = ''
					seg.NameLastOrOrganizationName = ''
					seg.NameFirst = ''
				end
				sub_loop.TRN do |seg|
					seg.TraceTypeCode = rand(10 * 100)
					seg.ReferenceIdentification1 = rand(10 * 100)
					seg.OriginatingCompanyIdentifier = rand(10 * 100)
					seg.ReferenceIdentification2 = rand(10 * 100)
				end
			end
			loop.L2200E do |sub_loop|
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.REF do |seg|
					seg.ReferenceIdentificationQualifier = "00"
					seg.ReferenceIdentification = "R0203"
					seg.Description = "Description"
					seg.ReferenceIdentifier = "1241"
				end
				sub_loop.AMT do |seg|
					seg.AmountQualifierCode = ''
					seg.MonetaryAmount = ''
					seg.CreditDebitFlagCode = ''
				end
				sub_loop.DTP do |seg|
					seg.DateTimeQualifier = ''
					seg.DateTimePeriodFormatQualifier = ''
					seg.DateTimePeriod = ''
				end
				sub_loop.L2210E do |sub_loop_child|
					sub_loop_child.SVC do |seg|
						seg.ProductServiceID = ''
						seg.ProcedureModifier1 = ''
						seg.ProcedureModifier2 = ''
						seg.ProcedureModifier3 = ''
						seg.ProcedureModifier4 = ''
						seg.Description = ''
						seg.MonetaryAmount1 = ''
						seg.MonetaryAmount2 = ''
						seg.OriginalProductServiceIDQualifier = ''
						seg.OriginalProductServiceID = ''
						seg.OriginalProcedureModifier1 = ''
						seg.OriginalProcedureModifier2 = ''
						seg.OriginalProcedureModifier3 = ''
						seg.OriginalProcedureModifier4 = ''
						seg.OriginalDescription = ''
						seg.Quantity2 = ''
					end
					sub_loop.REF do |seg|
						seg.ReferenceIdentificationQualifier = "00"
						seg.ReferenceIdentification = "R0203"
						seg.Description = "Description"
						seg.ReferenceIdentifier = "1241"
					end
					sub_loop.DTP do |seg|
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
	end
end

if __FILE__ == $0
	Demo276.run
end
