class SearcherController < ApplicationController

  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = 'l31I4jAJvWMnnBz2pLvHNadIj'
      config.consumer_secret = 'NnGFqMiWMrvdwmAQHBstTdAU5CiGIDVFw3uoDdK78ipSmuQIn8'
    end
    @tweets = client.search(search_params, result_type: 'recent') if params[:query]
  end

  private

  def search_params
    params.require(:query)
  end
end
