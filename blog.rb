require_relative "./post.rb"
require_relative "./blog_manager.rb"

class Blog
  attr_accessor :directory

  def initialize
    @my_book = Book.new
  end

  def add_post
    puts "Title: "
    title = gets.chomp.downcase
    date = Time.now
    puts "Post: "
    text = gets.chomp.downcase
    puts "sponsored (true/false): "
    sponsored = gets.to_bool
    @my_book << Post.new(title, date, text, sponsored)
  end
end

case post.sponsored
when false
  puts "#{post.title.capitalized}                    #{post.date}"
  puts "*************************"
  puts "#{post.text}\n"
  puts "-------------------------"
when true
  puts "=======#{post.title.capitalized}=======      #{post.date}"
  puts "*************************"
  puts "#{post.text}\n"
  puts "-------------------------"
end
