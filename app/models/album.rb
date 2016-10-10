class Album < ActiveRecord::Base
  has_attachments :photos, maximum: 10
  belongs_to :type
end
