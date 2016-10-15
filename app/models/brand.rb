class Brand < ActiveRecord::Base
  has_attachment :logo
  belongs_to :product
  validates :logo, presence: true
end
