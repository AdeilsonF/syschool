class School < ApplicationRecord
  validates :name, :pitch, :subdomain, :email, presence: true
  validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
  validates :subdomain, format: { with: /\A[-a-z0-9_\.]+(subdomain.com)\z/i }

  has_many :courses
end
