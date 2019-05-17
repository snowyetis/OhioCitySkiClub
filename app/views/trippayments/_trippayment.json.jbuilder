json.extract! trippayment, :id, :payment_number, :status, :date, :cost, :service, :trip_id, :client_id, :created_at, :updated_at
json.url trippayment_url(trippayment, format: :json)
