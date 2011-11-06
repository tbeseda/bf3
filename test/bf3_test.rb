require 'bf3'
require 'minitest/spec'
require 'minitest/autorun'

describe Bf3::Player do
  before do
    @player = Bf3::Player.new('Raengr', '360')
  end

  describe 'getting a player' do
    it 'should return the player requested' do
      soldier = @player.callUp()
      soldier['name'].must_equal 'Raengr'
    end
  end
end