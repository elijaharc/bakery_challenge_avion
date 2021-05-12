# frozen_string_literal: true

class Vegemite
  attr_accessor :quantity, :pack_of_five, :pack_of_three

  def initialize(quantity, pack_of_three = 0, pack_of_five = 0)
    @quantity = quantity
    @pack_of_three = pack_of_three
    @pack_of_five = pack_of_five
    puts
    return compute_vegemite_packs
  end

  private

  def compute_vegemite_packs
    order_quantity = @quantity

    if (quantity % 5).zero?
      @pack_of_five = @quantity / 5
      @pack_of_three = 0
      puts "Order Quantity: #{@quantity} -- #{@pack_of_five} pack/s of 5"
      puts compute_total_cost
    elsif @quantity == 7 || @quantity == 2 || @quantity == 1 || @quantity.zero?
      puts 'Invalid amount'
    else
      until (order_quantity % 5).zero?
        order_quantity -= 3
        @pack_of_three += 1
        @pack_of_five = order_quantity / 5
      end
      puts "Order Quantity: #{@quantity} -- #{@pack_of_three} pack/s of 3 and #{@pack_of_five} pack/s of 5"
      puts compute_total_cost
    end
  end

  def compute_total_cost
    puts "#{@quantity} VS5 $#{(@pack_of_five * 8.99 + @pack_of_three * 6.99).round(2)}"
    puts "#{@pack_of_three} x 3 $6.99" if @pack_of_three.positive?
    puts "#{@pack_of_five} x 5 $8.99" if @pack_of_five.positive?
  end
end

# def add(n)
#   if n == 1
#     return n
#   end
#   puts n
#   n + add(n - 1)
# end

# puts add(9)
