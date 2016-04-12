class Page
  def initialize(post_num = 3)
    @post_num = post_num
  end

  def paginate(directory, my_book)
    pages = directory.lenght / @post_num
    if directory.lenght % @post_num == 1
      pages += pages
    end
    start_post = 0
    my_book.each do |page|
      my_book[[page], []].push.directory.slice(start_post, @post_num)
      start_post += @posts_num
    end
  end
end
