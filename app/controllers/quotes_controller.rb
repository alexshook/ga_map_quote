class QuotesController < ApplicationController

  before_filter :authenticate!, except: :index

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    quote = Quote.create quote_params
    flash[:notice] = "Thanks for submitting a quote!"
    redirect_to quote
  end

  def update
    @quote = Quote.find params[:id]
    quote.update_attributes!(quote_params)
    quote = Quote.update quote_params
  end

  def show
    @quote = Quote.find params[:id]
    @quotes = Quote.all
  end

  def edit
    @quote = Quote.find params[:id]
    quote = Quote.update quote_params
    redirect_to @quote
  end

  private

  def quote_params
    params.require(:quote).permit(:quote)
  end

  def authenticate!
    redirect_to root_path unless user_signed_in? or admin_signed_in?
  end

end
