class Recipe
	include HTTParty
	
	key_value = ENV["FOOD2FORK_KEY"] = '4d1927cd8059225337289f41b7435e68'
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	
	base_uri 'http://www.food2fork.com/api'

	default_params key: key_value
  	format :json

  def self.for term
	get("/search", query: {q: term})["recipes"]
  end
end
