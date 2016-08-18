class Promo < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  validates :start, presence: true
  validates :end, presence: true
  mount_uploader :photos, PhotoUploader
  belongs_to :type
end
