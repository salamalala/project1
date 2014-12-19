class Coursetype < ActiveRecord::Base
  has_many :courses

  mount_uploader :icon, CoursetypeIconUploader
end
