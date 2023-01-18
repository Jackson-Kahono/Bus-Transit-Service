class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :phonenumber, :password_digest, :isAdmin
end
