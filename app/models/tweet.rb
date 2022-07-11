class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length:{minimum: 10, maximum: 200}, presence: true
  validates :published_at, presence: true

  after_initialize do
    self.published_at ||= 10.minutes.from_now
  end

  def published?
    tweet_id?
  end
  def publish_to_twitter!
    tweet = twitter_account.client.update(body + " I'm tweeting with @gem! on my Ruby on rails app")
    update(tweet_id: tweet.id)
  end


end
