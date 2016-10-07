class AddFilmToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_reference :campaigns, :campaign, foreign_key: true
  end
end
