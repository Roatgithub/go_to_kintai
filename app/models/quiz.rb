class Quiz < ApplicationRecord
  has_one_attached :image
  enum destination: [:Asia, :Europe, :Oceania, :Americas, :Africa]
  validates :question, presence: true
  validates :answer, presence: true
  validates :destination, presence: true
end