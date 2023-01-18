class User < ApplicationRecord
  has_many :buses
  has_many :buses, through: :bookings

  validates :fullname, presence: true, uniqueness: true
  def authenticate(pass)
    #compare bcrypt password to the one in the database
    BCrypt::Password.new(self.password_digest) == pass
  end
end
