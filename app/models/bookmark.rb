class Bookmark < ApplicationRecord
  belongs_to :event, foreign_key: :event_id
  belongs_to :user, primary_key: :id, foreign_key: :user_id, class_name: :User
end
