json.extract! review, :id, :summary, :body, :stars, :ride_id, :created_at, :updated_at
json.url review_url(review, format: :json)
