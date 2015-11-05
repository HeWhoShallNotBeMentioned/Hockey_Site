
class StatsLeaderController < ActionController::Base
  require 'json'
  def index
    @response = HTTParty.get("http://api.sportradar.us/nhl-t3/seasontd/2015/REG/leaders/offense.json?api_key=yadrw9wfk79mqdkmdpdmjd5q")
    @season = @response.parsed_response["season"]
    @season_id = @season['id']
    @categories = @response.parsed_response["categories"]

    respond_to do |format|
      format.json {render :json }
      format.html { render :index }

    end
  end
end
