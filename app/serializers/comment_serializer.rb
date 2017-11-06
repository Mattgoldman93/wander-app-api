class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :editable, :post
  belongs_to :user
  def editable
    scope == object.user
  end

  def posts
    object.post.pluck(:id)
  end
end
