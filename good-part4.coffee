# add = (a,b) ->
#   return a + b
# myObj =
#   value: 0
#   increment: (inc)->
#     @value += (if typeof inc == "number" then inc else 1)
# myObj.double = ->
#   that = this
#   helper = ->
#     that.value = add(that.value,that.value)
#   helper()

# myObj.increment(3)
# alert myObj.value
# myObj.double()
# alert myObj.value
#myObj.increment()
#alert myObj.value
#alert add(3,4)
#

# Quo = (string)->
#   @status = string
# Quo.prototype.get_status = ->
#   @status

# myQuo = new Quo("test")
#alert myQuo.get_status()

#array = [3,4]
#sum = add.apply(null, array)
#statusObj =
#  status: "OK"
#status = Quo.prototype.get_status.apply(statusObj)
#alert sum
#alert status

#####Arguments############
# total = ->
#   i = 0
#   total = 0
#   while i < arguments.length
#     total += arguments[i]
#     i += 1
#  total
#alert total(12,23,34)


#######Exception##########
# add = (a,b) ->
#   if typeof a != "number" or typeof b != "number"
#     throw name: "TypeError", message: "please put number"
#   a + b

# try_add = ->
#   try
#     add("seven")
#   catch e
#     document.writeln e.name + ":" + e.message
# try_add()

# Number.method "integer",->
#   Math[if this < 0 then "floor" else "ceil"](this)
# alert (10 / 3).integer()
#alert Math["ceil"](4.5)

########Recursion
#
# hanoi = hanoi = (disc,src,aux,dst)->
#   if disc > 0
#     hanoi(disc - 1,src,dst,aux)
#     document.writeln "Move disc " + disc + " from " + src + " to " + dst
#     hanoi(disc - 1,src,aux,dst)
# hanoi(3,"Src","Aux","Dst")

########Callback
# request = prepare_the_request()
# send_request_asynchronously request, (response)->
#   display(response)
# alert "hello"
#
########Memorize
#
# before Memo

s = new Date()
fib = (n)->
  if n < 2 then n else fib(n-1) + fib(n-2)
i = 0
while i <= 35
  console.log i + " : " + fib(i) + "<br/>"
  i += 1
console.log(new Date() - s)

#Memo

ms = new Date()
fibonacci = (n)->
  memo = [0,1]
  fi = (n)->
    result = memo[n]
    if typeof result != "number"
      result = fi(n - 1) + fi(n - 2)
      memo[n] = result
    result
  fi(n)
console.log "start fib<br/>"
mi = 0
while mi <= 35
  console.log fibonacci(mi)
  mi += 1
console.log(new Date() - ms)
