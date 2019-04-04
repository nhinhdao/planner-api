class Place < ApplicationRecord
  belongs_to :user
  belongs_to :timetable, optional: true
  has_many :reviews, dependent: :delete_all
  # validates :username, :email, :image, :password, :password_confirmation, presence: true
end
