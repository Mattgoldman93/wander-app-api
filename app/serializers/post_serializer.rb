class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :updated_at, :editable
  belongs_to :user
  def editable
    scope == object.user
  end
end
