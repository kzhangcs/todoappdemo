class StockQuote
  include HTTParty

  # base_uri 'http://whoismyrepresentative.com'
  # default_params output: 'json'
  # format :json

  # def self.for state
  #   get('/getall_reps_bystate.php', query: { state: state})['results']
  # end

   API_URL = 'https://cloud.iexapis.com/stable/stock/aapl/quote?token=pk_9de4cd0891cf444ab35b6caae35fde3a'

  def unique_url
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    json = JSON.parse(response.body)
    json['companyName']
  end
end