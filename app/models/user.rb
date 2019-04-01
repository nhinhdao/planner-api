class User < ApplicationRecord
  #User can have many saved places
  has_many :places
  #user can have many timetable
  has_many :timetables

  validates :username, :email, :image, :password, :password_confirmation, presence: true
  has_secure_password
end
