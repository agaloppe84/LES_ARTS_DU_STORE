class Brand < ActiveRecord::Base
  has_attachment :logo
  has_many :products
  validates :logo, presence: true
end
