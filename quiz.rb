# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

# def evenNum(n)
# num = (0..n - 1).to_a
# even = [];
# num.each { |n| even << (n * 2) }
# end
#
# def evenRecur(n, even = [])
#   if n == 0
#     even.unshift(0)
#   else
#     even.unshift(n * 2)
#     evenRecur(n - 1, even)
#   end
#
#   even.slice(0..n - 1)
# end
#
# # Benchmarking
# Benchmark.bm do |x|
#   x.report("Loop: ") { evenNum(5000) }
#   x.report("Recursion: ") { evenRecur(5000) }
# end

# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.
# module HelperMethods
#   def titleize(string)
#     string = ['in', 'the', 'of', 'and', 'or', 'from']
#
#     stringCapitalized = string.split(" ").each do |word|
#       if !string.include? word
#         word.capitalize!
#       end
#     end
#
#     stringCapitalized.join(" ");
#   end
# end
# p titleize("hello world")

# print "Enter a sentence: "
# sentence = gets.chomp
#
# words = sentence.split
# capitalized_words = []
# words.each do |word|
#   puts word.capitalize
#   capitalized_words << word.capitalize
# end
#
# p capitalized_words.join(" ")

# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.
# require './q7.rb'
#
# module Blog
#   class Article
#     include HelperMethods
#
#     attr_reader :title, :body
#
#     def initialize(title, body)
#       @title = titleize(title)
#       @body = body
#     end
#   end
#
#   class Snippet < Article
#     attr_reader :title, :body
#
#     def body
#       @body.length > 100 ? "#{@body.slice(0, 100)}..." : @body
#     end
#   end

  # 9. Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:

# class Book
#
#   attr_accessor :title, :chapters
#
#   def initialize
#     @title = ""
#     @chapters = []
#   end
#
#   def add_chapter(chapter_title)
#     @chapters << chapter_title
#   end
#
#   def chapters
#     puts "Your book: #{@title}"
#
#     @chapters.each_with_index do |chapter, index|
#     puts "#{index + 1}. #{chapter}"
#   end
#   end
#   end
#
# book = Book.new
# book.title = "My Awesome Book"
# book.add_chapter("My Awesome Chapter 1")
# book.add_chapter("My Awesome Chapter 2")
# book.chapters

# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.
