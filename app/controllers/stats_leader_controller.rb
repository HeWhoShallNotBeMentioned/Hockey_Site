
class StatsLeaderController < ActionController::Base
  require 'json'
  def index
    @response = HTTParty.get("http://api.sportradar.us/nhl-t3/seasontd/2015/REG/leaders/offense.json?api_key=yadrw9wfk79mqdkmdpdmjd5q")
    @season = @response.parsed_response["season"]
    @season_year = @season['year']
    @categories = @response.parsed_response["categories"]
    @categories_list = @categories.map { |x| [x['name'], x['type']] }

    @players = @response.parsed_response["season"]["categories"]["ranks"]
    @players_list = @players.map { |x| [x['rank'], x['score']] }

    respond_to do |format|
      format.json {render :json }
      format.html { render :index }

    end
  end
end
