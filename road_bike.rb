require_relative 'pannier'
require_relative 'bike'


class RoadBike < Bike

  DAILY_PRICE = 15

  def initialize
    super(cargo: [Pannier.new, Pannier.new],
          daily_price: DAILY_PRICE)
  end

  def prepare_bike
    super()
    lubricate_gears()
  end

  def lubricate_gears
    puts "Lubricating gears..."
  end

  def weekly_rental_price
    @daily_price * 7 + 
    @cargo.inject(0){|sum, x| sum + x.cost}
  end

end
