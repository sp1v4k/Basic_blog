require_relative "./post.rb"
require_relative "./pager.rb"

class Blog
  DEFAULT_PAGE = 1
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
    puts "Sponsored (yes/no): "
    sponsored = gets.chomp.downcase
    @directory << Post.new(title, date, text, sponsored)
  end

  def publish_posts
    pager = Pager.new
    quit = "no"
    pages = pager.calculate_page_num(@directory)
    pager.paginate(@directory, DEFAULT_PAGE)
    Menu.print_pages(pages)
    until quit == "yes"
      pager.paginate(@directory, pager.select_page(pages))
      Menu.print_pages(pages)
      quit = gets.chomp
    end
  end
end
