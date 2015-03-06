class SomethingsController < ApplicationController
  before_action :set_something, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @somethings = Something.all
    respond_with(@somethings)
  end

  def show
    respond_with(@something)
  end

  def new
    @something = Something.new
    respond_with(@something)
  end

  def edit
  end

  def create
    @something = Something.new(something_params)
    @something.save
    respond_with(@something)
  end

  def update
    @something.update(something_params)
    respond_with(@something)
  end

  def destroy
    @something.destroy
    respond_with(@something)
  end

  private
    def set_something
      @something = Something.find(params[:id])
    end

    def something_params
      params.require(:something).permit(:name)
    end
end
