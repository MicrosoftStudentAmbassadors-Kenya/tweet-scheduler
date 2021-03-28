class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: { minimum: 5, maximum: 280 }
  validates :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 1.hour.from_now
  end
end
