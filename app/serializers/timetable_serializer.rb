class TimetableSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :places
  belongs_to :user
end
