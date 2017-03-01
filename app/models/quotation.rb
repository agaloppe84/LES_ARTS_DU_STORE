class Quotation < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  validates :firstname, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :zipcode, presence: true
  validates :blindttype, presence: true
  validates :message, presence: true
  validates :address, presence: true
end
