require 'rails_helper'


RSpec.describe SchoolsController, type: :controller do
  let(:school) { FactoryGirl.create :school }

  it "visit index page" do
    visit root_path
  end

end
