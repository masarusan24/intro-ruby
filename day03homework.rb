# 合計額
TOTTAL_PRICE = 20000
# 割引券の所持枚数
COUPON_NUM = [1,2,5]
# 割引額
COUPON_PRICE = [1000,500,100]
# 割引券利用閾値
BORDER_PRICE = 5000

# 支払い額と割引券の使用枚数をハッシュで返す
def payment(total, coupon)

  result = {
    used_coupon: Array.new(coupon.length).fill(0),
    payed_money: total
  }

  if TOTTAL_PRICE >= BORDER_PRICE
    coupon.each_with_index do |val,idx|
      coupon[idx].to_i.times do
        if result[:payed_money] - COUPON_PRICE[idx] > 0
          result[:payed_money] -= COUPON_PRICE[idx]
          result[:used_coupon][idx] += 1
        end
      end
    end
  end
  return result
end

result = payment(TOTTAL_PRICE, COUPON_NUM)

puts "合計額は#{TOTTAL_PRICE}円、支払い金額は#{result[:payed_money]}円、利用した割引券の内訳は以下の通りです。"
result[:used_coupon].each_with_index do |val,idx|
  puts "#{COUPON_PRICE[idx]}円割引券#{result[:used_coupon][idx]}枚"
end
