class SearcherController < ApplicationController

  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = 'here should be consumer key'
      config.consumer_secret = 'here should be consumer_secret'
    end
    @tweets = client.search(search_params, result_type: 'recent') if params[:query]
  end

  private

  def search_params
    params.require(:query)
  end
end
