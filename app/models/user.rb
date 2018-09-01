class User < ApplicationRecord

  befoer_save :downcase_email

  validates :username, presence: true,
            uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }

  def downcase_email
    email = email.downcase
  end

end
