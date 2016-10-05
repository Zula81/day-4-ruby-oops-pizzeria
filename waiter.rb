class Waiter
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
    when 2
      p "Peccato! Hopelijk tot een volgende keer. Buongiorno!"
    else
      p "Scuse! Ik heb niet helemaal begrepen denk ik?"
    end
  end

  def initialize(menu)
    @menu = menu
  end

  def list_menu
    @menu.contents.each do |dish|
      p "#{dish.name}"
    end
  end

end
