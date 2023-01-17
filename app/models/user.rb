class User < ApplicationRecord
    has_secure_password

    has_many :buses
    has_many :buses, through: :bookings

    def authenticate
        #use BCrypt to authenticate
        self.password_digest == BCrypt::Password.create(self.password)
    end

end
