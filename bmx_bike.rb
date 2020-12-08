require_relative 'tail_pack'
require_relative 'bike'


class BmxBike < Bike

  WEEKLY_PRICE = 70
  DAILY_PRICE = 20
  HOURLY_PRICE = 5

  def initialize
    super(cargo: TailPack.new,
          weekly_price: WEEKLY_PRICE,
          daily_price: DAILY_PRICE,
          hourly_price: HOURLY_PRICE)
  end

  def prepare_bike
    super()
    adjust_seat()
  end

  def adjust_seat
    puts "Adjusting seat..."
  end

end
