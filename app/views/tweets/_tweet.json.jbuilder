json.extract! tweet, :id, :user_id, :twitter_account_id, :body, :published_at, :tweet_id, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
