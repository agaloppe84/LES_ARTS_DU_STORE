class Type < ActiveRecord::Base
  validates :name, presence: true
  has_many :blinds
  has_many :promos
end
