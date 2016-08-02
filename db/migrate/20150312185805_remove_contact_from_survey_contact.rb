class RemoveContactFromSurveyContact < ActiveRecord::Migration
  def change
    remove_column :survey_contacts, :contact?
  end
end
