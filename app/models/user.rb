class User < ApplicationRecord
  has_secure_password
  ROLES = %i[user moderator admin]

  def has_role?(role)
    return self.role == role
  end
end
