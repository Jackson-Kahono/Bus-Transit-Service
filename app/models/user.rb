class User < ApplicationRecord
  has_many :bookings
  has_many :buses, through: :bookings

  def authenticate(pass)
    #compare bcrypt password to the one in the database
    BCrypt::Password.new(self.password_digest) == pass
  end
end
