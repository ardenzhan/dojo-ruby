class SurveysController < ApplicationController
  def index
    session[:views] ||= 0
  end

  def process_survey
    session[:views] = session[:views] + 1

    session[:result] = params[:survey]

    flash[:success] = "Thanks! Form submitted #{ session[:views] } time(s) now."

    redirect_to surveys_result_path
  end

  def result
    @result = session[:result]
  end
end
