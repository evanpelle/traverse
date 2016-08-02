class AddShouldContactToSurveyContact < ActiveRecord::Migration
  def change
    add_column :survey_contacts, :contact?, :boolean
  end
end
