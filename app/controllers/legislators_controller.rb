class LegislatorsController < ApplicationController
  def all_for
    if params[:latitude].present? && params[:longitude].present?
      @legislators = Sunlight::Legislator.all_for :latitude => params[:latitude], :longitude => params[:longitude]
    elsif params[:address].present?
      @legislators = Sunlight::Legislator.all_for :address => params[:address]
    else
      render 'index'
    end
  end

  def index
  end

end
