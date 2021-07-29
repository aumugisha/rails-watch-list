class Bookmark < ApplicationRecord
  belongs_to :movie
  has_and_belongs_to_many :lists

  

  validates :comment, uniqueness: { scope: [:movie_id, :list_id] }, presence: true, length: {minimum: 6}



end
