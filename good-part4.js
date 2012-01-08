(function() {
  var fib, fibonacci, i, mi, ms, s;
  s = new Date();
  fib = function(n) {
    if (n < 2) {
      return n;
    } else {
      return fib(n - 1) + fib(n - 2);
    }
  };
  i = 0;
  while (i <= 35) {
    console.log(i + " : " + fib(i) + "<br/>");
    i += 1;
  }
  console.log(new Date() - s);
  ms = new Date();
  fibonacci = function(n) {
    var fi, memo;
    memo = [0, 1];
    fi = function(n) {
      var result;
      result = memo[n];
      if (typeof result !== "number") {
        result = fi(n - 1) + fi(n - 2);
        memo[n] = result;
      }
      return result;
    };
    return fi(n);
  };
  console.log("start fib<br/>");
  mi = 0;
  while (mi <= 35) {
    console.log(fibonacci(mi));
    mi += 1;
  }
  console.log(new Date() - ms);
}).call(this);
