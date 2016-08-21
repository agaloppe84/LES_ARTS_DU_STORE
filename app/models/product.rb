class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  has_attachments :photos, maximum: 2
  belongs_to :type
end
