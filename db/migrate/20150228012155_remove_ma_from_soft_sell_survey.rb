class RemoveMaFromSoftSellSurvey < ActiveRecord::Migration
  def change
    remove_column :soft_sell_surveys, :mq
  end
end
