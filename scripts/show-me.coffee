# Description:
#   Shows you places around Tampa Bay
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot show me <place>
places = {
  'sirata': 'http://fox13cams.com/webcams/sirata.jpg',
  'usfsp': 'http://fox13cams.com/webcams/usfstpete.jpg',
  'clearwater': 'http://fox13cams.com/webcams/clearwater.jpg',
  'downtown': 'http://www.fox13cams.com/webcams/skytower.jpg',
  'westshore': 'http://www.fox13cams.com/webcams/tampawest.jpg',
  'bradenton': 'http://www.fox13cams.com/webcams/bradentonbeach.jpg',
  'bayshore': 'http://fox13cams.com/webcams/grandcourt.jpg',
  'riverview': 'http://www.fox13cams.com/webcams/transmitter.jpg',
  'hudson': 'http://www.fox13cams.com/webcams/pascobeach.jpg',
  'lakeland': 'http://www.fox13cams.com/webcams/lakeland.jpg'
}

module.exports = (robot) ->
  robot.respond /show me (.*)/i, (msg) ->
    placeName = msg.match[1]
    place = places[placeName.toLowerCase()]
    if place == undefined
      msg.reply "I don't know " + placeName
    else
      msg.reply place
