require_relative "./blog.rb"
require_relative "./post.rb"

class DataCollector
  attr_writer :my_Blog

  def initialize
    @my_blog = options[:my_blog] || Blog.new
  end

  def self.collect_data
    puts "Title: "
    title = gets.chomp.downcase
    date = Time.now
    puts "Post: "
    text = gets.chomp.downcase
    puts "sponsored (true/false): "
    sponsored = gets.to_bool
    @my_blog.add_post(Post.new(title, date, text, sponsored))
  end
end
