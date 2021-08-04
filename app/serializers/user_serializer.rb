class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, 
  :last_name,
  :email,
  :pronouns,
  :interested_in,
  :birthday,
  :join_date,
  :tags
end
