class User < ApplicationRecord
  has_secure_password
  before_save :init

  ROLES = %i[user moderator admin]

  def has_role?(role)
    self.role == role
  end

  private

  def init
    self.role ||= ROLES.first()
  end
end
