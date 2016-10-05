class Campaign < ApplicationRecord

  belongs_to :club

  STATUS = %i[created, submited, validated, approuved]
  before_save :init

  private
  def init
    self.status = STATUS[0]
  end
end
