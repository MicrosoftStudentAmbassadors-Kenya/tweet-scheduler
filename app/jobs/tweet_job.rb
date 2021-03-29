class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    # Do something later
    return if tweet.published?

    # When a user reschedules a tweet to the future, usecase.
    return if tweet.publish_at > Time.current

    tweet.publish_to_twitter!

  end

end
