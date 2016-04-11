require_relative "./post.rb"
require_relative "./blog_manager.rb"

class Blog
  attr_accessor :directory

  def initialize
    @directory = []
  end

  def add_post
    puts "Title: "
    title = gets.chomp.downcase
    date = Time.now
    puts "Post: "
    text = gets.chomp.downcase
    puts "sponsored (true/false): "
    sponsored = gets.to_bool
    @directory << Post.new(title, date, text, sponsored)
  end

  def publish
    #First all posts array (directory) are sorted by date
    @directory.sort! do |post1, post2|
      post2.date <=> post1.date
    end
    # Second we send full array to list all posts to be paginated
    Page.paginate(@directory)
  end
end
