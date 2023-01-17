class Bus < ApplicationRecord
    has_many :users
    has_many :users, through: :bookings


    def self.getSeats
        self.seater - self.passengers
    end
end
