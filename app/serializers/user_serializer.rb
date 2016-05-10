class UserSerializer < ActiveModel::Serializer
  attributes :id, :slack_id, :name
  has_many :characters
end
