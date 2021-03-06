class User < ApplicationRecord

  has_secure_password

  has_many :articles, dependent: :destroy

  before_save :downcase_email

  validates :username, presence: true,
            uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }

  validates :password, length: { minimum: 6 }, allow_nil: true

  def downcase_email
    self.email = email.downcase
  end

end
