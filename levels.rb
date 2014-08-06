module Grocer

  class Level
    attr_reader :text, :produce, :speed, :number_of_items

    def initialize(text, produce, time, number_of_items)
      @text = text
      @produce = produce
      @speed = speed
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


level1 = Level.new("So, this is your first day working at my supermarket. I guess I'll go easy on you.", [banana, orange], 2, 10)
level2 = Level.new("So you still want to work here? Ok. We've gotten some new items in stock, finally.", [banana, orange, apple, potatoes], 2, 20)
level3 = Level.new("One of our best workers quit yesterday. You're going to have to start picking up the slack!", [banana, orange, apple, potatoes, 4, 30)
  
