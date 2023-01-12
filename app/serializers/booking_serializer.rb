class BookingSerializer < ActiveModel::Serializer
  attributes :id, :bus_id, :user_id, :isActive
end
