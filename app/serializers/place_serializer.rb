class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :category, :contact, :location, :rating, :photos, :time, :isAddedToList
  belongs_to :user
  belongs_to :timetable
  has_many :reviews
end
