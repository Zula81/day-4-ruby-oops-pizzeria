require './dish'

class Menu
  def initialize
    @menu = [
      Dish.new("Margherita"),
      Dish.new("Napoletana"),
      Dish.new("Peperoni")
    ]
  end

  def contents
    @menu
  end
end
