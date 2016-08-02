class SurveyContactsController < ApplicationController

  include SurveyContactsHelper

  def new
    @contact = SurveyContact.new
    @contact.soft_sell_survey = SoftSellSurvey.new
  end

  def create
    @contact = SurveyContact.new(survey_contact_params)
    @contact.soft_sell_survey = SoftSellSurvey.new(soft_sell_survey_params)
    @contact.save
    #session[:contact_id] = @contact.id
    session[:contact_id] = @contact.id.to_s
    redirect_to :action => "services"
  end

  def services
   #@contact = SurveyContact.find_by(id: params[:survey_contact])
   #@contact = SurveyContact.find_by(id: session[:contact_id].to_i)
   @contact = SurveyContact.new
   #flash.now[:succes] = "hi"
   print "Session ID: #{request.session_options[:id]}"
  end

  def update
    render 'final.html.erb'
  end

  def contact_download
    @users = SurveyContact.all
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"user-list.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end


  def survey_download
    @surveys = SoftSellSurvey.all
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"survey-list.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  def survey_contact_params
    params.require(:survey_contact).permit(:name, :email, :password, :company)
  end

  def soft_sell_survey_params
    #params.require(:soft_sell_survey).permit(:ma, :mb, :mc, :md, :a0, :a1, :a2, :a3, :a4, :a5, :a6, :a7)
    params.require(:soft_sell_survey).permit(SoftSellSurvey.column_names)
  end

end
 