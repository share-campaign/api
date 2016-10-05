class AddClubToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_reference :campaigns, :club, foreign_key: true
  end
end
