class Actor < ApplicationRecord
  has_many :movie_actors, dependent: :destroy
  has_many :movies, through: :movie_actors
  default_scope -> {order(:age)}

  def find
    moves = movie_actors.pluck(:movie_id)
    find_all = MovieActor.where(movie_id: moves)
    names = Actor.joins(:movie_actors).where(movie_actors: {movie_id: moves}).pluck(:name).uniq
  end
end
