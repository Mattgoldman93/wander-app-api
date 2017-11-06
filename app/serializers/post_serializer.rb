class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :updated_at, :editable, :comments
  belongs_to :user

  def editable
    scope == object.user
  end

  def comments
    object.comments.pluck(:id)
  end

end
