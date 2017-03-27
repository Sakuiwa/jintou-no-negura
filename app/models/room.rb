class Room < ApplicationRecord
	has_many :chats
	has_many :joins , dependent: :destroy
	has_many :roles , dependent: :destroy
	belongs_to :user
end
