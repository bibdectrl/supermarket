require 'gosu' 

class GroceryWindow < Gosu::Window

  def initialize
    super 640, 480, false
	self.caption = "Grocery"
	@font = Gosu::Font.new(self, "courier", 20)
	@nums = []
  end

  def draw
    @font.draw("#{@nums[0]} #{@nums[1]} #{@nums[2]} #{@nums[3]}", 100, 100, 0)
  end

  def update

  end

  def check_code
    puts @nums[0].to_s + @nums[1].to_s + @nums[2].to_s + @nums[3].to_s 
  end

  def button_down id
   if id == Gosu::KbReturn
     check_code
     @nums = [] 
   else
     handle_input button_id_to_char id
   end
  end

  def handle_input ch
  case ch
  when "0".."9"
    @nums.push ch
  end
  end
  
end

GroceryWindow.new.show
