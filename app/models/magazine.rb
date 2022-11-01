class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category

    @@all << self

  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  # def authors
  #   Authors.all.select {|author| author.name == @name}
  # end

  def contributors
    Authors.all.find { |author| author == @uthor}
  end


end

