module ItemsHelper
  def review(item)
    review_count = 0
    subtotal = 0.0
    review_avg = 0.0
    
    @item.orders.each do |order|
      review_count += 1 
      subtotal += order.review if !order.review.nil?
    end
    review_avg = subtotal/review_count
    render partial: 'review', locals: {review_count: review_count, review_avg: review_avg}
  end
end
