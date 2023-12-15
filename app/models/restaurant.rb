class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
  
  validates :name, :address, :category, presence: true # rest.errors.messages
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
