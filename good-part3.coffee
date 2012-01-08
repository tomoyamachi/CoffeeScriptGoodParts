empty_object = {}
stooge = {
  "first_name": "tomoya"
  "last_name": "amachi"
  "nickname": "Tom"
     }
flight = {
  airline: "ana"
  number:815
  departure:
    time: "today"
    city: "Hiroshima"
  arrival:
    time: "tomorrow"
    city: "Tokyo"
  }
# alert stooge["first_name"]
# alert stooge.first_name
#alert flight.departure
#alert flight.departure.city
if typeof Object.create != 'function'
  Object.create = (o)->
    F = ->
    F.prototype = o
    return new F
another_stooge = Object.create(stooge)
another_stooge.nickname = "Test"
alert another_stooge.nickname
delete another_stooge.nickname
alert another_stooge.nickname
