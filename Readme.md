# Suite-n-Sour

  NetSuite SOAP, Web Store, Offline Client, User Interface, and XML/JSON RPC automation for Node.js.

 [![Suite-n-Sour](http://eibbors.com/img/snsour.png)](http://github.com/eibbors/suite-n-sour)

   Blow your SuiteScript benchmarks to kingdom come with SnSour's multi-protocol approach!

## Installation

    $ npm install suite-n-sour

  The easiest way is to install her with npm, but you can of course also clone this repository:

    $ git clone https://github.com/eibbor/suite-n-sour.git

## Usage

  Each protocol/context has its own namespace within the suite-n-sour index.js file. See the tests folder 
  for some more sample code and I've tried to heavily comment the CoffeeScript src files, which is the quickest
  way to see how everything ticks.

```coffeescript
snsour = require 'suite-n-sour'
nsui = new snsor.ui.Client(host: 'system.netsuite.com')
nsui.login 'your@email.com', 'yourpassword', (res) ->
  console.log res
  nsui.getContext console.log
  nsui.getRecordTypes console.log
  nsui.searchGlobal 'asdf', console.log
  # See the src/ui.coffee file for available functions
```

```javascript
nsdbg = require('suite-n-sour').debug;
nd = new nsdbg.Client('debugger.netsuite.com');
nd.loginAs('your@email.com', 'yourpassword', 'yourcompanyid', 3 /*role*/, function(res) {
  console.log(res);
  nd.runScript('var r = nlapiGetContext(); confirm(c); confirm(this.__proto__.toSource());', console.log);
});
```
  I am swamped with stuff right now so any help with documentation, bug fixes, etc. is much appreciated!

## License

  GPLv3 with propietary licensing options available to NetSuite consultation firms and anyone interested in reselling suite-n-sour based integration services. If you have any questions, it's probably better to be safe than sorry and shoot me an e-mail. 

  NETSUITE® and SuiteScript™ are registered trademarks or service marks of NetSuite, Inc.
  
<3 Always

Eibbor Srednuas
http://eibbors.com/

