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
      when false
        puts "#{post.title}                         #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      when true
        puts "=======#{post.title}=======           #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      end
    end
  end
end
