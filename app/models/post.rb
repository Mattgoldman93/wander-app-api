class Post < ApplicationRecord
  belongs_to :user
  acts_as_commentable
  mount_uploader :attachment, AvatarUploader
end
