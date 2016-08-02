class AddMainQuestionsToSoftSellSurvey < ActiveRecord::Migration
  def change
    add_column :soft_sell_surveys, :mq, :boolean, :default => false
    add_column :soft_sell_surveys, :ma, :boolean, :default => false
    add_column :soft_sell_surveys, :mb, :boolean, :default => false
    add_column :soft_sell_surveys, :mc, :boolean, :default => false
    add_column :soft_sell_surveys, :md, :boolean, :default => false
  end
end
