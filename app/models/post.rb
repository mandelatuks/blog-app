class Post < ApplicationRecord
  belongs_to :Author, class_name: 'User'
  has_many :likes

  after_save :update_posts_counter

  def update_posts_counter
    Author.increment!(:Posts_Counter)
  end

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end
