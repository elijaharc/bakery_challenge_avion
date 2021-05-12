# frozen_string_literal: true

# INCOMPLETE

# def compute_blueberry_packs(customer_order_quantity)
#   pack_of_8 = 0
#   pack_of_5 = 0
#   pack_of_2 = 0
#   quantity_value = customer_order_quantity
#   remainder_of_8 = quantity_value % 8
#   remainder_of_5 = quantity_value % 5

#   if (customer_order_quantity % 8).zero?
#     pack_of_8 = customer_order_quantity / 8
#   elsif (customer_order_quantity % 5).zero?
#     pack_of_5 = customer_order_quantity / 5
#   elsif customer_order_quantity.even?
#     pack_of_2 = customer_order_quantity / 2
#   end
# end

# compute_blueberry_packs(2)
# compute_blueberry_packs(4)
# compute_blueberry_packs(6)
# compute_blueberry_packs(7)
# compute_blueberry_packs(10)
# compute_blueberry_packs(25)
# compute_blueberry_packs(40)
# compute_blueberry_packs(30)
# compute_blueberry_packs(75)

#   until quantity_value % 8 == 0 || quantity_value % 5 == 0 || quantity_value % 2 == 0 do
#     quantity_value -= 5
#     pack_of_5 += 1
#     if remainder_of_8 == 5
#       pack_of_8 = quantity_value / 8
#     end
#     pack_of_5 = quantity_value / 5
#     remainder = quantity_value % 5
#   end
