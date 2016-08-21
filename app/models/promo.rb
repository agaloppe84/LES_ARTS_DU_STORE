class Promo < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  validates :start, presence: true
  validates :end, presence: true
  has_attachments :photos, maximum: 2
  belongs_to :type
end
