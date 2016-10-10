class Type < ActiveRecord::Base
  validates :name, presence: true
  has_many :products
  has_many :promos
  has_many :albums
end
