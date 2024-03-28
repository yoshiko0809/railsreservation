class User < ApplicationRecord

  has_many :rooms
  has_many :reservations

  has_one_attached :avatar

  validates :user_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
