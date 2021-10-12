class User < ApplicationRecord

  before_validation :ensure_session_token

  validates :email, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: {minimum: 6}, allow_nil: true

  attr_reader :password

  def self.generate_session_token
    session_token = SecureRandom::urlsafe_base64
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)

    if user && user.is_correct_password?(password)
      return user
      # redirect_to user_url(user.id)
    else
      flash[:errors] = ["Invalid username or password"]
    end
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    return self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_correct_password?(password)
    password_object = BCrypt::Password.new(self.password_digest)
    return password_object.is_password?(password)
  end

end
