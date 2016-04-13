class Menu
  def self.print_menu
    puts "IRONBLOG\n"
    puts "(1) Add a post!"
    puts "(2) List Blog's posts!"
    puts "(3) Exit"
  end

  def self.print_pages(pages)
    pages_menu = Array(1..pages)
    pages_menu.each do |page_num|
      print "-#{page_num}-"
    end
    puts " Quit? (yes/no): "
  end
end
