json.extract! order, :id, :vocher, :customer_id, :delivery, :gate, :remark, :payment, :created_at, :updated_at
json.url order_url(order, format: :json)