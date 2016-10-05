class RemoveClubIdToCampaign < ActiveRecord::Migration[5.0]
  def change
    remove_column :campaigns, :clubs_id
  end
end
