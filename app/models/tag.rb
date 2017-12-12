class Tag < ApplicationRecord
  belongs_to :user

  has_many :taggings, dependent: :destroy
  has_many :flashcards, through: :taggings

  #makes sure the tag is unique to the user that created it
  validates :name, presence: true, uniqueness: { scope: :user_id }
end
