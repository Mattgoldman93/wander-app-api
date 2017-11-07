class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :editable, :post_id
  belongs_to :user
  def editable
    scope == object.user
  end

end
