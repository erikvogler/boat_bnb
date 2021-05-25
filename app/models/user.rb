class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :boats
  has_many :bookings
  validates :first_name, :last_name, :address, presence:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
