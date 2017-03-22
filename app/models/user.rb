class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chats
  has_many :rooms
  has_many :joins, dependent: :destroy
  has_many :jobs, dependent: :destroy

end
