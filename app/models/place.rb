class Place < ApplicationRecord
  belongs_to :user
  belongs_to :timetable, optional: true
  has_many :reviews
  # validates :username, :email, :image, :password, :password_confirmation, presence: true
end
