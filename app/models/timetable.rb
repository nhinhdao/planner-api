class Timetable < ApplicationRecord
  belongs_to :user
  has_many :places

  validates :name, presence: true
end
