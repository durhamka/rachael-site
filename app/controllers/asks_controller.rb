class AsksController < ApplicationController
  def index

  end

  def show

  end

  def create
    @ask = Ask.new
    if @ask.save
      flash[:notice] = 'You have successfully asked Ms.Rachael a question. She will get back to you shortly!'
    else
      flash[:notice] = 'Sorry, something went wrong! Please try again.'
    end
    redirect_to root_path
  end
end