class User < ApplicationRecord
  # when we delete a user, all the flashcards linked to this user are being deleted as well
  has_many :flashcards, dependent: :destroy
end
