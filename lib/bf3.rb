require 'bf3/version'
require 'httparty'
require 'json'

module Bf3

  class Player

    def initialize(name, platform)
      @name = name
      @platform = platform
    end

    def callUp
      opts = {player: @name, output: 'json'}
      response = HTTParty.post("http://api.bf3stats.com/#{@platform}/player/", :body => opts)
      return JSON response.body
    end

  end

end
