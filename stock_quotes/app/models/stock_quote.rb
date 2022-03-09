class StockQuote
  include HTTParty

  # base_uri 'http://whoismyrepresentative.com'
  # default_params output: 'json'
  # format :json

  # def self.for state
  #   get('/getall_reps_bystate.php', query: { state: state})['results']
  # end

   # API_URL = 'https://cloud.iexapis.com/stable/stock/aapl/quote?token=pk_9de4cd0891cf444ab35b6caae35fde3a'
   # example input: FB, AAPL, MSFT, AMZN
  def unique_url input
  # 	base_uri = 'https://cloud.iexapis.com/stable/stock/'
 	# full_url = base_uri + input + '/quote?token=pk_9de4cd0891cf444ab35b6caae35fde3a'
 	# response = HTTParty.get(full_url)
    # TODO more error checking (500 error, etc)
    # JSON.parse(response.body)
    [
	  	{
	    "change": 0.61,
	    "companyName": "Apple",
	    "symbol": "AAPL"
		},
		
		{
	    "change": 2.79,
	    "companyName": "Meta",
	    "symbol": "FB"
		}
	]
  end
end