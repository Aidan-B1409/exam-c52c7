require_relative 'roll_pack'
require_relative 'bike'


class MountainBike < Bike

  WEEKLY_PRICE = 90
  DAILY_PRICE = 25
  HOURLY_PRICE = 10

  def initialize
    super(cargo: RollPack.new,
          weekly_price: WEEKLY_PRICE,
          daily_price: DAILY_PRICE,
          hourly_price: HOURLY_PRICE)
  end

  def prepare_bike
    super()
    adjust_suspension()
  end

  def adjust_suspension
    puts "Adjusting suspension..."
  end


end
