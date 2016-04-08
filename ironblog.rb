require "pry"

class Blog
  attr_accessor :directory

  def initialize
    @directory = []
  end

  def add_post(post)
    @directory << post
  end

  def publish_front_page
    #First all posts array (directory) are sorted by date
    @directory.sort! do |post1, post2|
      post2.date <=> post1.date
    end
    # Second we cover full array to list all posts
    @directory.each do |post|
      case post.sponsored
      when "no"
        puts "#{post.title}                         #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      when "yes"
        puts "=======#{post.title}=======           #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      end
    end
  end
end

class Post
  attr_accessor :title, :date, :text

  def initialize(title, date, text, sponsored)
    @title = title
    @date = date
    @text = text
    @sponsored = sponsored
  end
end


class Menu
  def self.print_menu
    puts "IRONBLOG\n"
    puts "(1) Add a post!"
    puts "(2) List Blog's posts!"
    puts "(3) Exit"
  end
end

Menu.print_menu
sp1v4k_blog = Blog.new
option = nil
until option == "3"
  option = gets.chomp
  case option
  when "1"
    puts "Title: "
    title = gets.chomp.downcase
    date = Time.now
    puts "Post: "
    text = gets.chomp.downcase
    puts "sponsored (yes/no): "
    sponsored = gets.chomp.downcase
    post = Post.new(title, date, text, sponsored)
    sp1v4k_blog.add_post(post)
  when "2"
    sp1v4k_blog.publish_front_page
  end
end
