class AddOtherAndShouldContactToSoftSellSurvey < ActiveRecord::Migration
  def change
    add_column :soft_sell_surveys, :other, :boolean
    add_column :soft_sell_surveys, :contact?, :boolean
  end
end
