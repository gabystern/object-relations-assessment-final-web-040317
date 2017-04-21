class Movie

  ALL = []

  attr_accessor :title, :ratings

  def initialize(title)
    @title = title
    @ratings = []
    ALL << self
  end

  def self.all
    ALL
  end

  #given a string of movie title,
  #returns the first movie that matches
  def self.find_by_title(title)
    self.all.find do |movie|
      movie.title == title
    end
  end

  #returns an array of all ratings for that movie
  def ratings
    Rating.all.find_all do |rating|
      rating.movie == self
    end
  end

  #should return all of the viewers who have left ratings for that movie.
  def viewers
    self.ratings.collect do |rating|
      rating.viewer
    end
  end

  #should return the average of all of the
  #scores for the ratings of that particular movie.
  def average_rating
    sum = 0
    self.ratings.each do |rating|
      sum += rating.score
    end
    avg = sum/self.ratings.length
    avg.to_f
  end

end
