class CoursetypesController < ApplicationController
  before_action :set_coursetype, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @coursetypes = Coursetype.all
    respond_with(@coursetypes)
  end

  def show
    respond_with(@coursetype)
  end

  def new
    @coursetype = Coursetype.new
    respond_with(@coursetype)
  end

  def edit
  end

  def create
    @coursetype = Coursetype.new(coursetype_params)
    @coursetype.save
    respond_with(@coursetype)
  end

  def update
    @coursetype.update(coursetype_params)
    respond_with(@coursetype)
  end

  def destroy
    @coursetype.destroy
    respond_with(@coursetype)
  end

  private
    def set_coursetype
      @coursetype = Coursetype.find(params[:id])
    end

    def coursetype_params
      params.require(:coursetype).permit(:name, :description, :icon, :intensity, :remote_icon_url)
    end
end
