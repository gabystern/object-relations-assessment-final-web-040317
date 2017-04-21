class Rating

  ALL = []

  attr_accessor :score, :movie, :viewer, :ratings

  def initialize(score, movie, viewer)
    @score = score
    @movie = movie
    @viewer = viewer
    @movie.ratings << self
    @viewer.ratings << self
    ALL << self
  end

  def self.all
    ALL
  end

end
