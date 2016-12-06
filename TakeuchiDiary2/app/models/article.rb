class Article < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  mount_uploader :image, ImageUploader
  acts_as_ordered_taggable_on :interests

  def liked_by? user
    likes.where(user_id: user.id).exists?
  end

end
