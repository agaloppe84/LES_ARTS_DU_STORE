class Info < ActiveRecord::Base
  has_attachment :icon
  belongs_to :product
end
