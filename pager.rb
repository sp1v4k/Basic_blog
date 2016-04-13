class Pager
  attr_reader :post_num
  def initialize(post_num = 3)
    @post_num = post_num
  end

  def paginate(directory, num_page)
    page = directory[((num_page - 1) * @post_num)..(num_page * (@post_num - 1))]
    page.each do |post|
      case post.sponsored
      when "no"
        puts "#{post.title.capitalize}                    #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      when "yes"
        puts "=======#{post.title.capitalize}=======      #{post.date}"
        puts "*************************"
        puts "#{post.text}\n"
        puts "-------------------------"
      end
    end
  end

  def calculate_page_num(directory)
    pages = directory.length / @post_num
    pages += 1 if (directory.length % @post_num) == 1
    pages
  end

  def select_page(pages)
    selection = 0
    selection = gets.chomp.to_i until (selection > 0) && (selection <= pages)
    selection
  end
end
