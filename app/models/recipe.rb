class Recipe < ApplicationRecord
  # Title  must be present
  validates :title, presence: true

  # Instructions must be present and at least 50 chars
  validates :instructions, presence: true, length: { minimum: 50 }

  # Belongs to a user
  belongs_to :user
end
