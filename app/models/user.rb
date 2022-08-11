class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  # method that returns the 3 most recent posts for a given user
  def recent_post
    posts.limit(3).order(created_at: :desc)
  end
end
