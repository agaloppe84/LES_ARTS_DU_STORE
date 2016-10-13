class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  has_attachments :photos, maximum: 2
  belongs_to :type
  has_many :infos, dependent: :destroy
  has_one :power, dependent: :destroy
  belongs_to :brand
end
