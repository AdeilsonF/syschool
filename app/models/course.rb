class Course < ApplicationRecord
  validates :title, :description, presence: true
  validates :price, :duration, presence: true, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :school
  has_many :lessons
end
