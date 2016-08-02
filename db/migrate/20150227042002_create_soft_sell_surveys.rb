class CreateSoftSellSurveys < ActiveRecord::Migration
  def change
    create_table :soft_sell_surveys do |t|

      t.timestamps
    end
  end
end
