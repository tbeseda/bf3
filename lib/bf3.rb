require 'bf3/version'
require 'httparty'
require 'json'

module Bf3

  class Player

    def initialize(name, platform)
      @name = name
      @platform = platform
    end

    def callUp(opt='clear,global')
      body = {
        player: @name,
        output: 'json',
        opt: opt
      }
      response = HTTParty.post("http://api.bf3stats.com/#{@platform}/player/", :body => body)
      if response.code == 200
        stats = JSON(response.body)['stats']
        @stats = stats
        return stats
      else
        return response
      end
    end

    def kdr
      self.callUp() unless @stats and @stats['global']['kills']
      return @stats['global']['kills'].to_f / @stats['global']['deaths']
    end

  end

end
