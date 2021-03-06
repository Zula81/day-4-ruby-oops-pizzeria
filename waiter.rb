require './kitchen'

class Waiter

  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
  end

  def greet_guest
    p "Buongiorno! Benvenuti nel nostro ristorante! "
  end

  def serve_guest
    p "Gezellig dat jullie ons restaurant hebben gekozen! Hoe kan ik jullie van dienst zijn?"
    p "1. Willen jullie de kaart om een pizza te bestellen?"
    p "2. Wordt het toch iets anders vandaag?"
    take_order(gets.chomp.to_i)
  end

  def take_order(order_number)
    case order_number
    when 1
      p "Top! Ik ga meteen de kaart voor jullie halen!"
      list_menu
      order_food(gets.chomp.to_i)
    when 2
      p "Peccato! Hopelijk tot een volgende keer. Buongiorno!"
    else
      p "Scuse! Ik heb niet helemaal begrepen denk ik?"
    end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice)
        dish = @menu.contents[choice]
      @kitchen.order(dish)
  end

end
