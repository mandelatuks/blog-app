class Like < ApplicationRecord
  belongs_to :Author, class_name: 'User'
  belongs_to :Post, class_name: 'Post'

  after_save :update_likes_counter

  def update_likes_counter
    Post.increment!(:Likes_Counter)
  end
end
