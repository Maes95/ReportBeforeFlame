require 'rails_helper'
require 'spec_helper'

RSpec.describe Stakeholder, :type => :model do
  subject(:stakeholder) { Stakeholder.new(name: 'Michel', lastname: 'Maes Bermejo', role: 'HACKPASS', password: 'esto_es_una_password_segura_%!/&', email: 'michel.maes95@gmail.com')}

  it 'is valid with full params' do
    stakeholder.should be_valid
  end

  it 'is not invalid without params' do
    stakeholder_not_valid = Stakeholder.new
    stakeholder_not_valid.should_not be_valid
  end
end
