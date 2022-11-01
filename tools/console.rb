require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("Family magazine", "Family")
mag2 = Magazine.new("Insider", "Them kids")


author1 = Author.new("Author1")
author2 = Author.new("Author2")

article1 = Article.new(author1, mag1, "Data structures")
article2 = Article.new(author1, mag2, "Algorithms")
article3 = Article.new(author2, mag1, "Intro to pyton")
article4 = Article.new(author1, mag1, "Intro to javascript")







### DO NOT REMOVE THIS
binding.pry

0
