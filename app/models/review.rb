class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  validates :content, presence: true

end
