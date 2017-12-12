class Flashcard < ApplicationRecord
  belongs_to :user

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  #validates that a question and answer must be present
  validates :question, presence: true
  validates :answer, presence: true
end
