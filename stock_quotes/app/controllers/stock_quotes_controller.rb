class StockQuotesController < ApplicationController
  def index
    api = StockQuote.new()
    inputs = params[:symbol].split(',') || ['aapl','fb']
    @result = api.query(inputs)
   	@companies = params[:symbol] || 'aapl,fb'
  end
end
