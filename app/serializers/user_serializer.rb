class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image
  has_many :places
  has_many :timetables
end
