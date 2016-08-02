class RemoveOtherSoftSellSuvery < ActiveRecord::Migration
  def change
    remove_column :soft_sell_surveys, :other
  end
end
