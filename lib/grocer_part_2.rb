require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.length.times do |i|
    if(find_item_by_name_in_collection(cart[i][:item], coupons)!=nil)
      activeCoupon = coupons.select{|item| item[:item]==cart[i][:item]}[0]
      if(cart[i][:count] >= activeCoupon[:num])
        coupCount = (cart[i][:count]/activeCoupon[:num]).floor()
        cart[i][:count]-=(activeCoupon[:num]*coupCount)
        newItem = cart[i].clone
        newItem[:item]=cart[i][:item]+" W/COUPON"
        newItem[:price] = activeCoupon[:cost]*coupCount
        newItem[:count] = activeCoupon[:num]*coupCount
        cart.push(newItem);
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
