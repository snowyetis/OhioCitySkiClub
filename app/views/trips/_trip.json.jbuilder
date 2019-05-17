json.extract! trip, :id, :ski_resort, :resort_city, :resort_state, :cost, :gross_earned, :net_earned, :req_count, :actual_count, :trip_date, :trip_distance, :trip_days, :resort_rating, :created_at, :updated_at
json.url trip_url(trip, format: :json)
