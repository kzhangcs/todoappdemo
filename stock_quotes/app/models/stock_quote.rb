class StockQuote
  include HTTParty

  def query inputs
  	array = []

  	for input in inputs
	  	base_uri = 'https://cloud.iexapis.com/stable/stock/'
	 	full_url = base_uri + input + '/quote?token=pk_9de4cd0891cf444ab35b6caae35fde3a'
	 	response = HTTParty.get(full_url)
	 	parsed = JSON.parse(response.body)
	 	array << parsed
	end

	array

  end
end