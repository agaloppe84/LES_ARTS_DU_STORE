class Info < ActiveRecord::Base
  belongs_to :product
  validates :icon, presence: true
end
