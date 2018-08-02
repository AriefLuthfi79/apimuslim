class Event < ApplicationRecord
  belongs_to :user, primary_key: :id, foreign_key: :user_id, class_name: :User
  has_many :likes, dependent: :destroy
  validates :name, presence: true
end
