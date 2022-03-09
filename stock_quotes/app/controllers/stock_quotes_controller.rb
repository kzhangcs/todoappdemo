class StockQuotesController < ApplicationController
  def index
    api = StockQuote.new()
    if params[:symbol]
    	inputs = params[:symbol].split(',')
    else
        inputs = ['aapl','fb']
    end
    @result = api.query(inputs)
   	@companies = params[:symbol] || 'aapl,fb'
  end
end
