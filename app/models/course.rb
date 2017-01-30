class Course < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :description, :content, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.0 }

  belongs_to :school
end
