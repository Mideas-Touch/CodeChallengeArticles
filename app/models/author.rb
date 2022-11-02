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

  def articles
    Article.all.filter{ |article| article.author == @name}
  end

  def magazines
    articles.map{ |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map { |magazine| magazine.category }.uniq
  end

end

end
