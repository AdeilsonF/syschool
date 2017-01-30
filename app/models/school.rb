class School < ApplicationRecord
  validates :name, :pitch, :email, :subdomain, presence: true


  validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }

  has_many :courses

end
