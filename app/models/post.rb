class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  #   A method that updates the posts counter for a user.

  def update_post_counter
    user.increment!(:posts_counter)
  end

  def recent_five_comments()
    comments.order(created_at: :desc).limit(5)
  end
end