require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.length.times do |i|
    if(find_item_by_name_in_collection(cart[i][:item], coupons)!=nil)
      activeCoupon = coupons.select{|item| item[:item]==cart[i][:item]}
      if(cart[i][:count]<=activeCoupon[:num])
        cart[i][:count]-=(cart[i][:count]/activeCoupon[:num])
        cart.push({
          :item =>"#{cart[i][:item}",
          :price =>
        })
    
        
      end
    end
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
