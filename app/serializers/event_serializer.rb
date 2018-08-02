class EventSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description,
             :image_uri,
             :image_mime,
             :total_likes,
             :user_likes,
             :place

  belongs_to :user

  def user_likes
    object.likes.order('id DESC')
  end

  def total_likes
    object.likes.size
  end
end
