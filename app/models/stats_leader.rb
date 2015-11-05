class StatsLeader < ActiveRecord::Base
  require "httparty"

  base_uri "api.sportsradar.us/nhl-t3"

  base_path "seasontd/2015/REG/leaders/offense.json?api_key=#{ENV{SR_API_KEY}}"
end
