class SchedulesController < ApplicationController
  before_filter :authenticate_user!
  require 'json'
  require 'jsonpath'

  def index
    require 'net/http'

    today = Date.today

    uri = URI("https://api.fantasydata.net/nhl/v2/JSON/GamesByDate/#{today}")
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
    @away_team = @response_body.map{|x| x["AwayTeam"]}
    @home_team = @response_body.map{|x| x["HomeTeam"]}
    @date_time= @response_body.map{|x| x["DateTime"]}




  end

end
