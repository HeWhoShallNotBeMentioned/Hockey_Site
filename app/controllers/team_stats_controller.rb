class TeamStatsController < ApplicationController
  before_filter :authenticate_user!
  require 'json'
  require 'jsonpath'



  def index
    team = ""

  require 'net/http'

  if team.blank?
    @team = params[:VAN]
  else
    team = @team
  end


  uri = URI("https://api.fantasydata.net/nhl/v2/JSON/PlayerSeasonStatsByTeam/2016/#{@team}")
  uri.query = URI.encode_www_form({
  })

  request = Net::HTTP::Get.new(uri.request_uri)
  # Request headers
  request['Ocp-Apim-Subscription-Key'] = '74313a2ed9044ceaaf459408c2f4f781'
  # Request body
  request.body = "{body}"

  @response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
  end

  puts @response.body

  @response_body = []
  @response_body = JSON.parse(@response.body)
  @player_name = @response_body.map{|x| x["Name"]}
  @player_position = @response_body.map{|x| x["Position"]}
  @player_games = @response_body.map{|x| x["Games"]}
  @player_goals = @response_body.map{|x| x["Goals"]}
  @player_assists = @response_body.map{|x| x["Assists"]}
  @player_plus_minus = @response_body.map{|x| x["PlusMinus"]}
  @player_hits = @response_body.map{|x| x["Hits"]}
  @player_blocks = @response_body.map{|x| x["Blocks"]}
  @player_penalities = @response_body.map{|x| x["PenaltyMinutes"]}
  @player_takeaways = @response_body.map{|x| x["Takeaways"]}
  @player_giveaways = @response_body.map{|x| x["Giveaways"]}
  end

end
