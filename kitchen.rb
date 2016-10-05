class Kitchen

  def order(dish)
    p "KEUKEN: Bestelling ontvangen voor #{dish.name}"
    p "Ik heb het volgende nodig: "

    dish.ingredients.each do |ingredient|
      p "#{ingredient.amount} - #{ingredient.name}"
  end
end

end
