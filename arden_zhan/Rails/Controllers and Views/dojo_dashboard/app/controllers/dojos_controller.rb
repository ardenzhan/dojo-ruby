class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.save
      # Controllers II section, for flash messages :notice
      redirect_to root_url, notice: "Form submitted"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end
    
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end

end
