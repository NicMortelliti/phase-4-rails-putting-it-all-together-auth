class Recipe < ApplicationRecord
  has_secure_password
  validates :title, presence: true

  # Instructions must be present and at least 50 chars
  validates :instructions, presence: true, length: { minimum: 50 }
end
