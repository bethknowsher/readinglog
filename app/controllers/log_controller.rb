class LogController < ApplicationController
  before_action :find_log, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show

  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      redirect_to @log
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def log_params
    params.require(:log).permit(:date, :book, :minutes)
  end

  def find_log
    @log = Log.find(params[:id])
  end
end
