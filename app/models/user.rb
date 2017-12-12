class User < ApplicationRecord
  # when we delete a user, all the flashcards linked to this user are being deleted as well
  has_many :flashcards, dependent: :destroy
  has_many :tags, dependent: :destroy

  #each new user must have a name and unique login
  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
end
