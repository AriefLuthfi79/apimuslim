class User < ApplicationRecord
  has_secure_password
  has_many :events
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  before_save { downcase_email }

  private

  def downcase_email
    self.email = email.downcase
  end
end
