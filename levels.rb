module Grocer

  class Level
    attr_reader :text, :produce, :points_to_score, :time, :number_of_items

    def initialize(text, produce, points_to_score, time, number_of_items)
      @text = text
      @produce = produce
      @points_to_score = points_to_score
      @time = time
      @number_of_items = number_of_items
      @checkout_items = []
      @number_of_items.times do
        @checkout_items.push @produce.shuffle.first
      end
    end

  end

  class Produce
    attr_reader :name, :pic, :plu

    def initialize(name, pic, plu)
      @name = name
      @pic = pic
      @plu = plu
    end

  end


end


banana = Produce.new("banana", "assets/banana.png", "")
orange = Produce.new("orange", "assets/orange.png", "")
apple = Produce.new("apple", "assets/apple.png", "")
grapefruit = Produce.new("grapefruit", "assets/grapefruit.png", "")
lettuce = Produce.new("lettuce", "assets/lettuce.png", "")
watermelon = Produce.new("watermelon", "assets/watermelon.png", "")
kale = Produce.new("kale", "assets/kale.png", "")
grapes = Produce.new("grapes", "assets/grapes.png", "")
strawberries = Produce.new("strawberries", "assets/strawberries.png", "")
potatoes = Produce.new("potatoes", "assets/potatoes.png", "")
sweet_potatoes = Produce.new("sweet potatoes", "assets/sweet_potatoes.png", "")
tomatoes = Produce.new("tomatoes", "assets/tomatoes.png", "")
cherries = Produce.new("cherries", "assets/cherries.png", "")


level1 = Level.new("So, this is your first day working at my supermarket. I guess I'll go easy on you.", [banana, orange], 20, 120, 10) 
