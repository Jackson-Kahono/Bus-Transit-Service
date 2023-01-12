class User < ApplicationRecord
    has_secure_password

    has_many :buses
    has_many :buses, through: :bookings
end
