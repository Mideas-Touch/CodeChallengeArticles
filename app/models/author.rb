# require_relative 'models'
class Author
  @@all = []

  attr_reader :name


  def initialize(name)
    @name = name

    @@all << self
  
  end

  # def name
  #   @name
  # end

  def articles
    Article.all.select {|article| article.author.name == @name}
  end

  def magazines
    # Magazine.all.select { |magazine| self.Magazine == author.name}.uniq
    articles.map{|article| article.magazine}
  end

  def self.all
    @@all
  end

end
