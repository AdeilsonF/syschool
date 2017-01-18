require 'rails_helper'

RSpec.describe School, type: :model do
  let(:school) { FactoryGirl.build :school }
  subject { school }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:pitch) }
  it { should respond_to(:subdomain) }

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :pitch }
    it { should validate_presence_of :subdomain }
  end




end
