
class StatsLeaderController < ApplicationController
  before_filter :authenticate_user!
  require 'json'
  require 'jsonpath'

  def index
    @scoreArray = []
    @playerNameArray = []
    @teamCityArray = []
    @teamNameArray = []
    @rankArray = []
    @current_rank = 1
    @last_rank = 1

    @response = HTTParty.get("http://api.sportradar.us/nhl-t3/seasontd/2015/REG/leaders/offense.json?api_key=yadrw9wfk79mqdkmdpdmjd5q")
    @season = @response.parsed_response["season"]
    @season_year = @season['year']
    @categories = @response.parsed_response["categories"]
    @categories_list = @categories.map { |x| [x['name'], x['type']] }

    @categories.each do |category|
      category['ranks'].each do |rank|
        @scoreArray.push(rank['score'])
      end
    end

    @categories.each do |category|
      category['ranks'].each do |rank|
        player1 = rank['player']
        @playerNameArray.push(player1['full_name'])
      end
    end

    @categories.each do |category|
      category['ranks'].each do |rank|
        @Cities = JsonPath.new('$..market')
        @teamCityArray = @Cities.on(@categories)
      end
    end

    @categories.each do |category|
        @Ranks = JsonPath.new('$..rank')
        @rankArray = @Ranks.on(@categories)
    end


    respond_to do |format|
      format.json {render :json }
      format.html { render :index }

    end
  end
end
