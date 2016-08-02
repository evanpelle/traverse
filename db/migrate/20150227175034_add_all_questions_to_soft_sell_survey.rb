class AddAllQuestionsToSoftSellSurvey < ActiveRecord::Migration
  def change
    #these are shown if the first main question is true
    add_column :soft_sell_surveys, :a0, :boolean, :default => false
    add_column :soft_sell_surveys, :a1, :boolean, :default => false
    add_column :soft_sell_surveys, :a2, :boolean, :default => false
    add_column :soft_sell_surveys, :a3, :boolean, :default => false
    add_column :soft_sell_surveys, :a4, :boolean, :default => false
    add_column :soft_sell_surveys, :a5, :boolean, :default => false
    add_column :soft_sell_surveys, :a6, :boolean, :default => false
    add_column :soft_sell_surveys, :a7, :boolean, :default => false


    #these are shown if the second main question is true
    add_column :soft_sell_surveys, :bA0, :boolean, :default => false
    add_column :soft_sell_surveys, :bA1, :boolean, :default => false
    add_column :soft_sell_surveys, :bA2, :boolean, :default => false
    add_column :soft_sell_surveys, :bA3, :boolean, :default => false
    add_column :soft_sell_surveys, :bA4, :boolean, :default => false

    add_column :soft_sell_surveys, :bB0, :boolean, :default => false
    add_column :soft_sell_surveys, :bB1, :boolean, :default => false
    add_column :soft_sell_surveys, :bB2, :boolean, :default => false
    add_column :soft_sell_surveys, :bB3, :boolean, :default => false
    add_column :soft_sell_surveys, :bB4, :boolean, :default => false
    add_column :soft_sell_surveys, :bB5, :boolean, :default => false
    add_column :soft_sell_surveys, :bB6, :boolean, :default => false
    add_column :soft_sell_surveys, :bB7, :boolean, :default => false


    #these are shown if the third main question is true
    add_column :soft_sell_surveys, :cA0, :boolean, :default => false
      add_column :soft_sell_surveys, :cA0a, :boolean, :default => false
      add_column :soft_sell_surveys, :cA0b, :boolean, :default => false
      add_column :soft_sell_surveys, :cA0c, :boolean, :default => false
    add_column :soft_sell_surveys, :cA1, :boolean, :default => false
    add_column :soft_sell_surveys, :cA2, :boolean, :default => false
    add_column :soft_sell_surveys, :cA3, :boolean, :default => false
    add_column :soft_sell_surveys, :cA4, :boolean, :default => false
    add_column :soft_sell_surveys, :cA5, :boolean, :default => false
    add_column :soft_sell_surveys, :cA6, :boolean, :default => false

    add_column :soft_sell_surveys, :cB0, :boolean, :default => false
    add_column :soft_sell_surveys, :cB1, :boolean, :default => false
    add_column :soft_sell_surveys, :cB2, :boolean, :default => false
    add_column :soft_sell_surveys, :cB3, :boolean, :default => false
    add_column :soft_sell_surveys, :cB4, :boolean, :default => false
    add_column :soft_sell_surveys, :cB5, :boolean, :default => false
    add_column :soft_sell_surveys, :cB6, :boolean, :default => false
    add_column :soft_sell_surveys, :cB7, :boolean, :default => false
    add_column :soft_sell_surveys, :cB8, :boolean, :default => false
    add_column :soft_sell_surveys, :cB9, :boolean, :default => false
    add_column :soft_sell_surveys, :cB10, :boolean, :default => false
    add_column :soft_sell_surveys, :cB11, :boolean, :default => false


    #these are shown if the fourth main question is true
    add_column :soft_sell_surveys, :d0, :boolean, :default => false
    add_column :soft_sell_surveys, :d1, :boolean, :default => false
      add_column :soft_sell_surveys, :d1a, :boolean, :default => false
      add_column :soft_sell_surveys, :d1b, :boolean, :default => false
      add_column :soft_sell_surveys, :d1c, :boolean, :default => false
      add_column :soft_sell_surveys, :d1d, :boolean, :default => false
      add_column :soft_sell_surveys, :d1e, :boolean, :default => false

  end
end
