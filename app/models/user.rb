class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chats
  has_many :rooms
  has_many :joins, dependent: :destroy
  has_many :jobs, dependent: :destroy
  # has_many :roless, dependent: :destroy
  has_many :jinrous, dependent: :destroy
  has_many :kyoujins, dependent: :destroy
  has_many :kyousins, dependent: :destroy
  has_many :murabitos, dependent: :destroy
  has_many :uranais, dependent: :destroy
  has_many :reinos, dependent: :destroy
  has_many :kariudos, dependent: :destroy
  has_many :kyoyus, dependent: :destroy
  has_many :nekos, dependent: :destroy
  has_many :youkos, dependent: :destroy
  has_many :haitokus, dependent: :destroy
end
