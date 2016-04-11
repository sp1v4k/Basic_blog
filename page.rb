class Page

  def initialize(post_num = 3)
    @post_num = post_num
  end

  def paginate(directory)
    pages = directory.lenght / @post_num
    if directory.lenght % @post_num == 1
      pages += pages
    end
    start_page = 0
    until start_page > pages
      sliced_directory = directory.slice(start_page,@post_num)
      sliced_directory.each do |post|
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
      start_page = start_page + @posts_num
  end
  end
end
