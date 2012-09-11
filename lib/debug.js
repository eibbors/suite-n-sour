(function() {
  var DBGR_HANDLER, NsDbgSource, NsDbgSrcLine, NsDebugClient, NsDebugger, ui, xml;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  ui = require('./ui');

  xml = require('./xml');

  DBGR_HANDLER = '/app/common/scripting/scriptdebugger.nl';

  NsDebugClient = (function() {

    __extends(NsDebugClient, ui.Client);

    function NsDebugClient() {
      NsDebugClient.__super__.constructor.apply(this, arguments);
      this["debugger"] = {};
    }

    NsDebugClient.prototype.dbgr = function(operation, elements, options, cb) {
      var dr, _ref, _ref2, _ref3, _ref4, _ref5, _ref6;
      var _this = this;
      if (options == null) options = {};
      dr = {
        nsDebugRequest: elements
      };
      dr.nsDebugRequest['@'] = {
        operation: operation
      };
      if (options.dsid === true) {
        dr.nsDebugRequest['@'].debugsessionid = this["debugger"].sessionId;
        if ((_ref = elements.url) == null) {
          elements.url = (_ref2 = this["debugger"].source.url) != null ? _ref2 : 'debugger$debugger.user';
        }
        if ((_ref3 = elements.sourceid) == null) {
          elements.sourceid = (_ref4 = this["debugger"].source.sourceid) != null ? _ref4 : -1;
        }
        if (options.cf !== false) {
          if ((_ref5 = elements.frame) == null) {
            elements.frame = (_ref6 = this["debugger"].frame) != null ? _ref6 : 0;
          }
        }
      } else if (options.dsid != null) {
        dr.nsDebugRequest['@'].debugsessionid = options.dsid;
      }
      return this.xmlr(DBGR_HANDLER, dr, function(res) {
        var _ref7;
        if (res.headers['content-type'] === 'text/javascript; charset=UTF-8') {
          eval("res.parsed = (" + res.body + ")");
          _this["debugger"] = (_ref7 = new NsDebugger(res.parsed.debuggerState)) != null ? _ref7 : null;
        }
        return cb(_this["debugger"], res);
      });
    };

    NsDebugClient.prototype.runScript = function(script, cb) {
      return this.dbgr("runserver", {
        script: xml.cdata(script)
      }, {}, cb);
    };

    NsDebugClient.prototype.debugAdhoc = function(script, cb) {
      return this.dbgr('adhoc', {
        script: xml.cdata(script)
      }, {}, cb);
    };

    NsDebugClient.prototype.resume = function(sessionId, cb) {
      if (arguments.length === 1 && typeof sessionId === 'function') {
        return this.dbgr('resume', {}, {
          dsid: true
        }, sessionId);
      } else {
        return this.dbgr('resume', {}, {
          dsid: sessionId
        }, cb);
      }
    };

    NsDebugClient.prototype.invalidateSession = function(cb) {
      return this.dbgr('invalidateDebugSession', {}, {}, cb);
    };

    NsDebugClient.prototype.addWatch = function(expression, cb) {
      return this.dbgr('addwatch', {
        watch: xml.cdata(expression)
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.evalScript = function(expression, cb) {
      return this.dbgr('eval', {
        eval: xml.cdata(expression)
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.loadProperties = function(expression, cb) {
      return this.dbgr('loadproperties', {
        variable: xml.cdata(expression)
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.addUserEvent = function(scriptId, deployId, cb) {
      return this.dbgr('adduserevent', {
        scriptId: scriptId,
        deployId: deployId
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.setBreakpoint = function(line, url, cb) {
      var _ref;
      if (url == null) {
        url = (_ref = this["debugger"].source.url) != null ? _ref : 'debugger$debugger.user';
      }
      return this.dbgr('breakpoint', {
        breakpoint: {
          line: line,
          url: url
        }
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.switchCallFrame = function(frame, cb) {
      return this.dbgr('switchframe', {
        frame: frame
      }, {
        dsid: true
      }, cb);
    };

    NsDebugClient.prototype.stepOver = function(cb) {
      return this.dbgr('stepover', {}, {
        dsid: true,
        cf: false
      }, cb);
    };

    NsDebugClient.prototype.stepInto = function(cb) {
      return this.dbgr('stepinto', {}, {
        dsid: true,
        cf: false
      }, cb);
    };

    NsDebugClient.prototype.stepOut = function(cb) {
      return this.dbgr('stepOut', {}, {
        dsid: true,
        cf: false
      }, cb);
    };

    NsDebugClient.prototype.go = function(cb) {
      return this.dbgr('go', {}, {
        dsid: true,
        cf: false
      }, cb);
    };

    NsDebugClient.prototype.cancel = function(cb) {
      return this.dbgr('cancel', {}, {
        dsid: true,
        cf: false
      }, cb);
    };

    return NsDebugClient;

  })();

  NsDebugger = (function() {

    function NsDebugger(state) {
      var _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      this.sessionId = (_ref = state.debugsessionid) != null ? _ref : null;
      this.status = (_ref2 = state.status) != null ? _ref2 : 'notinitialized';
      this.mode = (_ref3 = state.mode) != null ? _ref3 : null;
      this.console = (_ref4 = state.console) != null ? _ref4 : [];
      this.evaluation = (_ref5 = state.evaluation) != null ? _ref5 : [];
      this.properties = (_ref6 = state.properties) != null ? _ref6 : [];
      this.watches = (_ref7 = state.watches) != null ? _ref7 : [];
      this.breakpoints = (_ref8 = state.breakpoints) != null ? _ref8 : [];
      this.callstack = (_ref9 = state.callstack) != null ? _ref9 : [];
      if (state.source) {
        this.source = new NsDbgSource(state.source);
      } else {
        this.source = null;
      }
    }

    return NsDebugger;

  })();

  NsDbgSource = (function() {

    function NsDbgSource(source) {
      var _ref, _ref2, _ref3, _ref4, _ref5, _ref6;
      this.html = (_ref = source.html) != null ? _ref : null;
      this.title = (_ref2 = source.title) != null ? _ref2 : null;
      this.url = (_ref3 = source.url) != null ? _ref3 : null;
      this.sourceid = (_ref4 = source.sourceid) != null ? _ref4 : null;
      this.selectedline = (_ref5 = source.selectedline) != null ? _ref5 : -1;
      this.currentline = (_ref6 = source.currentline) != null ? _ref6 : -1;
      this.lines = [];
    }

    return NsDbgSource;

  })();

  NsDbgSrcLine = (function() {

    function NsDbgSrcLine(line) {
      var _ref, _ref2, _ref3, _ref4;
      this.source = (_ref = line.source) != null ? _ref : '';
      this.breakpoint = (_ref2 = line.breakpoint) != null ? _ref2 : false;
      this.breakable = (_ref3 = line.breakable) != null ? _ref3 : false;
      this.currentline = (_ref4 = line.currentline) != null ? _ref4 : false;
    }

    return NsDbgSrcLine;

  })();

  module.exports = {
    Client: NsDebugClient,
    Debugger: NsDebugger
  };

}).call(this);
