# (net)Suite-n-SOUR.js 

  NetSuite for Node.js! Instead of being based on their SuiteTalk web services, I have based it off the requests made by their online user interface. It's faster, believe it or not simpler, and built from the ground up for greater continuity. Eventually a SuiteTalk implementation will be included, but for now enjoy SuiteScripting with a twist!

## Usage

  In a few days I will have some really cool examples, but here's the basic idea:

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
  The debugger module is fairly complete, repl example under construction:

```javascript
nsdbg = require('suite-n-sour').debug;
nd = new nsdbg.Client('debugger.netsuite.com');
nd.loginAs('your@email.com', 'yourpassword', 'yourcompanyid', 3 /*role*/, function(res) {
  console.log(res);
  nd.runScript('var r = nlapiGetContext(); confirm(c); confirm(this.__proto__.toSource());', console.log);
});
```
  Check the repository frequently as I will be updating tons of stuff daily.

## License

  GPLv3 with propietary licensing options available to NetSuite consultation firms and anyone interested in reselling suite-n-sour based integration services. If you have any questions, it's probably better to be safe than sorry and shoot me an e-mail. 

  NETSUITE® and SuiteScript™ are registered trademarks or service marks of NetSuite, Inc.
  
<3 Always

Eibbor Srednuas
http://eibbors.com/

