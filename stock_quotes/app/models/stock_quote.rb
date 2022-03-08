class StockQuote
  include HTTParty

  base_uri 'http://whoismyrepresentative.com'
  default_params output: 'json'
  format :json

  def self.for state
    get('/getall_reps_bystate.php', query: { state: state})['results']
  end
end