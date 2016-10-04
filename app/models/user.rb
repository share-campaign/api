class User < ApplicationRecord
  has_secure_password
  before_save :init

  ROLES = %i[user moderator admin]

  def has_role?(role)
    self.roles == role
  end

  private

  def init
    self.roles ||= 'user'
  end
end
