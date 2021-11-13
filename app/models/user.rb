class User < ApplicationRecord
  has_many :posts
  has_one :profile
  has_many :messages
  # has_many :coverstaion_data,through:messages,source:coverstaion
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
