class Type < ActiveRecord::Base
  validates :name, presence: true
  has_many :products
  has_many :promos
end
