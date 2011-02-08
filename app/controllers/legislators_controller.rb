class LegislatorsController < ApplicationController
  def all_for
    begin
      if params[:latitude].present? && params[:longitude].present?
        @legislators = Sunlight::Legislator.all_for :latitude => params[:latitude], :longitude => params[:longitude]
      elsif params[:address].present?
        @legislators = Sunlight::Legislator.all_for :address => params[:address]
      else
        flash.now[:error] = "Please fill in your address."
        render 'index'
      end
     rescue NoMethodError
        flash.now[:error] = "Please enter a valid address."
        render 'index'
     end
  end

  def index
  end

end
