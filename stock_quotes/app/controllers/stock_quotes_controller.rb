class StockQuotesController < ApplicationController
  def index
    # @state = params[:state] || 'md'
    # @reps = StockQuote.for(@state.upcase!).
    #   sort_by {|rep| rep['name']}

     # @result = StockQuote.for('MD')
     # @companyName = 'Apple'


    api = StockQuote.new()
    result = api.unique_url('aapl')
    @first = result[0]
    @symbol = @first[:symbol] #was @symbol = @first['symbol']
    @companyName = @first[:companyName]
    @change = params[:change] || '0.61'
    # @user = # Code to retrieve User
    # @user.update_attribute :url, url
    # etc
  end
end
