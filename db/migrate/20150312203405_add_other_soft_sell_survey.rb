class AddOtherSoftSellSurvey < ActiveRecord::Migration
  def change
    add_column :soft_sell_surveys, :other, :boolean, :default => false
  end
end
