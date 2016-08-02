class AddContactIndexToSoftSellSurvey < ActiveRecord::Migration
  def change
    add_column :soft_sell_surveys, :survey_contact_id, :integer
  end
end
