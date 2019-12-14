module ItemsHelper
  def review(item)
  # byebug        

    review_count = 0
    subtotal = 0.0
    review_avg = 0.0
    item.orders.each do |item| 
        review_count += 1
        # subtotal += item.order.review
    end
    review_avg = subtotal / review_count
    render partial: 'review', locals: {review_count: review_count, review_avg: review_avg}
  end
end
