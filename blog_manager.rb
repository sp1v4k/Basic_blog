require_relative "./menu.rb"
require_relative "./blog.rb"

class BlogManager
  attr_writer :option, :my_blog

  def initialize(option = 0, options = {}) # post_num = 3)
    @option = option
    @my_blog = options[:my_blog] || Blog.new
    #@post_num = post_num
  end

  def self.manage_data
    Menu.print_menu
    until @option == "3"
      @option = gets.chomp
      case @option
      when "1"
        # collects all post DataCollector
        @my_blog.add_post
      when "2"
        @my_blog.publish
      end
    end
  end
end
