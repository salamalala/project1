class CampusesController < ApplicationController
  before_action :set_campus, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campuses = Campus.all
    respond_with(@campuses)
  end

  def show
    respond_with(@campus)
  end

  def new
    @campus = Campus.new
    respond_with(@campus)
  end

  def edit
  end

  def create
    @campus = Campus.new(campus_params)
    @campus.save
    respond_with(@campus)
  end

  def update
    @campus.update(campus_params)
    respond_with(@campus)
  end

  def destroy
    @campus.destroy
    respond_with(@campus)
  end

  private
    def set_campus
      @campus = Campus.find(params[:id])
    end

    def campus_params
      params.require(:campus).permit(:name, :location)
    end
end
