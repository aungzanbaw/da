json.extract! order_detail, :id, :order_id, :product_id, :qty, :price, :remark, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)