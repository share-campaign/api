class AddCampaignToPricture < ActiveRecord::Migration[5.0]
  def change
    add_column :prictures, :campaign, :reference
  end
end
