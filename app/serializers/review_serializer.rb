class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :user_image, :text, :time_created, :rating
  belongs_to :place
end
