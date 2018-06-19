let SDC = require('statsd-client')
let sdc = new SDC({host: '127.0.0.1'});

let counter = 0;
setInterval(function () {
  counter++;
  let g = counter % 5;
  console.log(g)
  sdc.gauge('testgauge', g);
  sdc.counter('testcounter', g);
}, 40);

