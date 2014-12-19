class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  has_many :enrollments
  has_many :courses, through: :enrollments  

  # scope :user_teacher, -> {where role: 'teacher'}
  # scope :user_ta, -> {where role: 'ta'}


  def fullname
    "#{prename} #{lastname}"
  end


  def role?(role_to_compare)
      self.role.to_s == role_to_compare.to_s
  end
  
  mount_uploader :user_image, UserImageUploader

end
