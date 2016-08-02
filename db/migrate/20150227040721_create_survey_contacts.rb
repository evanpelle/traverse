class CreateSurveyContacts < ActiveRecord::Migration
  def change
    create_table :survey_contacts do |t|
      t.string :name
      t.string :company
      t.string :email

      t.timestamps
    end
  end
end
