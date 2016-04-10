require_relative "./menu.rb"

class BlogManager
  attr_writer :option, :my_blog

  def initialize(option = 0, options = {})
    @option = option
    @my_blog = options[:my_blog] || Blog.new
  end

  def self.manage_data
    Menu.print_menu
    until @option == "3"
      case @option
      when "1"
        # collects all post DataCollector
        DataCollector.collect_data(@my_blog)
      when "2"
        @my_blog.publish_front_page
      end
    end
  end
end
