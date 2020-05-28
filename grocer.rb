#### My Code ####
def consolidate_cart(cart)
  output = {}
  cart.each do |item|
    item_name = item.keys[0]
    if output[item_name]
      output[item_name][:count] += 1 
    else
      output[item_name] = item[item_name]
      output[item_name][:count] = 1 
    end
  end
  output
end
####
def apply_coupons(cart:[], coupons:[])
  total_savings = {}
  cart.each do |item, info|
    coupons.each do |coupon|
      if item == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] = info[:count] - coupon[:num]
        if result["#{food} W/COUPON"]
          result["#{food} W/COUPON"][:count] += 1
        else
          result["#{food} W/COUPONS"] = {
            :price => coupon[:cost],
            :clearance => info[:clearance],
            :count => 1
          }
        end
      end
    end
          result[food] = info 
        end
        result
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
