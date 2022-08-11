class Comment < ApplicationRecord
  belongs_to :Author, class_name: 'User'
  belongs_to :Post, class_name: 'Post'

  after_save :update_comments_counter

  def update_comments_counter
    Post.increment!(:comments_counter)
  end
end
