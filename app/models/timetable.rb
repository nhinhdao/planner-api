class Timetable < ApplicationRecord
  belongs_to :user
  has_many :places, dependent: :delete_all

  validates :name, presence: true
end
