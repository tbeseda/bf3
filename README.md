# Simple Battlefield 3 stats from bf3stats.com

## Example

'''
require 'bf3'

player = Bf3::Player.new('Raengr', '360')
stats = player.callUp() # get global stats

kdratio = stats['global']['kills'].to_f / stats['global']['deaths'].to_f
# OR, conveniently
kdratio = player.kdr()

# to get ALL THE STATS!
all_stats = player.callUp('all')
'''