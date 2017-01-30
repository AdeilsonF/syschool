require 'rails_helper'

RSpec.describe School, type: :model do
  let(:school) { FactoryGirl.build :school }

  subject { school }

  describe "Does respond to some atributes for school" do
    it { should respond_to :name }
    it { should respond_to :email }
    it { should respond_to :pitch }
    it { should respond_to :subdomain }
  end

  describe "Some validations for school" do
    it { validate_presence_of :name }
    it { validate_presence_of :emai }
    it { validate_presence_of :pitch }
    it { validate_presence_of :sudomain }
  end

  describe "Association with course" do
    before do
      school.save
      3.times { FactoryGirl.create :course, school_id: school.id }
    end
    it { should have_many :courses }

    it "Destroy the associated courses on self destruct" do
      courses = school.courses
      school.destroy
      courses.each do |course|
        expect(Course.find(course)).to raise_error ActiveRecord::RecordNotFound
      end
    end
  end
end
