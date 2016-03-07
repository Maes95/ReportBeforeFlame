require 'rails_helper'
require 'spec_helper'

RSpec.describe Report, :type => :model do

  # TEST FOR VALID REPORT
  context 'with valid params' do
    subject(:report) { Report.new(title: "Report 1", content: "Contenido 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
      report_type: "Other", priority: "High", stakeholder_id: 1)}

    it 'has valid param' do
      # Checked at Report's validation
      expect(report).to be_valid
    end

    it 'can\' have any answer' do
      # At creation, report can't have any answer
      expect(report.answers).to respond_to(:any?)
    end


  end

  # TEST FOR INVALID REPORT
  context 'with invalid params' do
     subject(:report) { Report.new(title: "", content: "No 15 words")}

     it 'is invalid without at least 1 words on title' do
       message = 'must have at least 1 words'
       report.save
       expect(report.errors.messages).to include(:title => [message])
     end

     it 'is invalid without at least 15 words on content' do
       message = 'must have at least 15 words, give us more details'
       report.save
       expect(report.errors.messages).to include(:content => [message])
     end
  end


end
