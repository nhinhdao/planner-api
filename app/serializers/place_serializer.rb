class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :contact, :location, :rating, :photos, :time
  belongs_to :user
  belongs_to :timetable
  has_many :reviews
end
