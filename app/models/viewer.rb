class Viewer
  attr_accessor :first_name, :last_name, :ratings

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @ratings = []
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  #given a string of a full name,
  #returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find do |viewer|
      viewer.full_name == name
    end
  end

  def create_rating(score, movie, viewer)
    Rating.new(score, movie, self)
  end

end
