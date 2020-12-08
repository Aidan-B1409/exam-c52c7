class Bike
  attr_reader :cargo,
              :weekly_price,
              :daily_price,
              :hourly_price

  def initialize(**options)
    @cargo = options.fetch(:cargo)
    @weekly_price = options.fetch(:weekly_price, 0)
    @daily_price = options.fetch(:daily_price, 0)
    @hourly_price = options.fetch(:hourly_price, 0)
  end

  def prepare_bike
    puts 'Cleaning...'
  end

  def weekly_rental_price
    @weekly_price + @cargo.cost
  end
end