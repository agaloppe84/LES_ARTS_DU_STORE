class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  mount_uploader :photos, PhotoUploader
  belongs_to :type
end
