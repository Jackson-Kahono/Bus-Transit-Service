class BusSerializer < ActiveModel::Serializer
  attributes :id, :bus_name, :seater, :passengers, :status, :from, :to, :time
end
