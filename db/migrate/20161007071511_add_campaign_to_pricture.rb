class AddCampaignToPricture < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :campaigns, foreign_key: true
  end
end
