class UserSerializer < ActiveModel::Serializer
  attributes :full_name, :email, :birth, :gender, :address
end
