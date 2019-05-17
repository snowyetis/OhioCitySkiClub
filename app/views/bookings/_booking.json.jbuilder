json.extract! booking, :id, :status, :title, :cost, :start, :cancelation_reason, :refunded, :trip_id, :client_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
