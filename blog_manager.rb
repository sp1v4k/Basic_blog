require_relative "menu.rb"
require_relative "blog.rb"

class BlogManager
  attr_accessor :option, :my_blog

  def initialize
    @option = option
    @my_blog = Blog.new
  end

  def manage_data
    Menu.print_menu
    until @option == "3"
      @option = gets.chomp
      case @option
      when "1"
        @my_blog.add_post
      when "2"
        @my_blog.publish_posts
      end
    end
  end
end
