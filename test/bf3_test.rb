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
      soldier['global'].wont_be_nil
    end
    it 'should have some global stats' do
      soldier = @player.callUp('clear,rank')
      soldier['global'].must_be_nil
      soldier['rank'].wont_be_nil
    end
  end

  describe 'some vanity stats' do
    it 'should return a floating point kill to death ratio' do
      kdr = @player.kdr()
      kdr.wont_be_nil
      kdr.must_be_instance_of(Float)
    end
  end
end