(function() {
  var EventEmitter, JSONR_HANDLER, NsRpcClient, NsRpcResponse, XMLR_HANDLER, http, https, qs, xml, zlib;
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; }, __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  http = require("http");

  https = require("https");

  qs = require('querystring');

  zlib = require('zlib');

  xml = require('./xml');

  EventEmitter = require('events').EventEmitter;

  JSONR_HANDLER = '/app/common/scripting/nlapijsonhandler.nl';

  XMLR_HANDLER = '/app/common/scripting/nlapihandler.nl';

  NsRpcClient = (function() {

    __extends(NsRpcClient, EventEmitter);

    function NsRpcClient(options) {
      var _ref, _ref2, _ref3, _ref4;
      if (options == null) options = {};
      this.jsonr = __bind(this.jsonr, this);
      this.request = __bind(this.request, this);
      this.requestId = 0;
      this.host = (_ref = options.host) != null ? _ref : 'system2.netsuite.com';
      if (options.secure || !(options.secure != null)) {
        this.connection = https;
        this.port = (_ref2 = options.port) != null ? _ref2 : 443;
      } else {
        this.connection = http;
        this.port = (_ref3 = options.port) != null ? _ref3 : 80;
      }
      this.cookies = (_ref4 = options.cookies) != null ? _ref4 : {};
    }

    NsRpcClient.prototype.request = function(method, path, opts, cb) {
      var body, h, headers, key, options, req, rid, v, value, _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7;
      var _this = this;
      if (opts == null) opts = {};
      rid = (_ref = opts.rid) != null ? _ref : ++this.requestId;
      options = {
        method: method != null ? method : 'GET',
        host: (_ref2 = opts.host) != null ? _ref2 : this.host,
        port: (_ref3 = opts.port) != null ? _ref3 : this.port
      };
      headers = {
        host: options.host,
        nsxmlhttprequest: 'NSXMLHttpRequest'
      };
      _ref4 = this.cookies;
      for (key in _ref4) {
        value = _ref4[key];
        if ((_ref5 = headers.cookie) == null) headers.cookie = '';
        headers.cookie += "" + key + "=" + value + "; ";
      }
      options.path = "" + (path != null ? path : '/');
      if (opts.query) options.path += "?" + (qs.stringify(opts.query));
      if (method === 'POST' || method === 'PUT') {
        body = (_ref6 = opts.body) != null ? _ref6 : null;
        headers['content-length'] = body.length;
      }
      _ref7 = opts.headers;
      for (h in _ref7) {
        v = _ref7[h];
        headers[h] = v;
      }
      options.headers = headers;
      req = this.connection.request(options, function(r) {
        var name, res, value, _ref8, _results;
        res = new NsRpcResponse(r, rid, function(response) {
          if (response.error) _this.emit('error', response.error, rid);
          _this.emit('response', rid, response, {
            requestOptions: options
          });
          return cb(response);
        });
        _ref8 = res.parseCookies();
        _results = [];
        for (name in _ref8) {
          value = _ref8[name];
          _results.push(_this.cookies[name] = value);
        }
        return _results;
      });
      this.emit('request', rid, req, options);
      if (body) req.write(body);
      req.end();
      this.emit('request', rid, req);
      return {
        request: req,
        id: rid
      };
    };

    NsRpcClient.prototype.get = function(path, options, cb) {
      var _this = this;
      if (options == null) options = {};
      return this.request('GET', path, options, function(response) {
        if (options.parser) {
          return response.parseBody(options.parser, cb);
        } else {
          return cb(response);
        }
      });
    };

    NsRpcClient.prototype.post = function(path, options, cb) {
      if (options == null) options = {};
      return this.request('POST', path, options, cb);
    };

    NsRpcClient.prototype.formr = function(path, form, cb) {
      var options;
      options = {
        body: qs.stringify(form),
        headers: {
          'content-type': 'application/x-www-form-urlencoded; charset=utf-8'
        }
      };
      return this.post(path, options, cb);
    };

    NsRpcClient.prototype.jsonr = function(jrmethod, jrparams, options, cb) {
      var body, headers, path, query, rid, _ref;
      var _this = this;
      if (options == null) options = {};
      rid = ++this.requestId;
      path = (_ref = options.path) != null ? _ref : JSONR_HANDLER;
      query = {
        jrr: 'T',
        jrid: rid,
        jrmethod: "remoteObject." + jrmethod,
        jrparams: JSON.stringify(jrparams != null ? jrparams : [])
      };
      if ((options.method != null) === 'POST') {
        body = JSON.stringify({
          id: query.jrid,
          method: query.jrmethod,
          params: query.jrparams
        });
        query = {
          jrr: 'T'
        };
        headers = {
          'content-type': 'application/json; charset=utf-8'
        };
        return this.request('POST', path, {
          rid: rid,
          body: body,
          query: query,
          headers: headers
        }, function(response) {
          var _ref2;
          return response.parseBody((_ref2 = options.parser) != null ? _ref2 : 'json', cb);
        });
      } else {
        return this.request('GET', path, {
          rid: rid,
          query: query
        }, function(response) {
          var _ref2;
          return response.parseBody((_ref2 = options.parser) != null ? _ref2 : 'json', cb);
        });
      }
    };

    NsRpcClient.prototype.xmlr = function(path, payload, cb) {
      var body, options, _ref;
      if (typeof payload === 'object') body = xml.render(payload);
      options = {
        body: (_ref = body != null ? body : payload) != null ? _ref : '',
        headers: {
          'content-type': 'text/xml; charset=utf-8'
        }
      };
      return this.post(path != null ? path : XMLR_HANDLER, options, cb);
    };

    return NsRpcClient;

  })();

  NsRpcResponse = (function() {

    function NsRpcResponse(response, requestId, callback) {
      var _this = this;
      this.requestId = requestId;
      this.statusCode = response.statusCode;
      this.headers = response.headers;
      this.body = '';
      response.on('data', function(data) {
        return _this.body += data;
      });
      response.on('end', function() {
        return _this.decodeBody(function() {
          return _this.parseErrors(function() {
            return callback(_this);
          });
        });
      });
    }

    NsRpcResponse.prototype.decodeBody = function(cb) {
      var _ref;
      var _this = this;
      if ((_ref = this.headers['content-encoding'] != null) === 'gzip' || _ref === 'deflate') {
        return zlib.unzip(this.body, function(parsed) {
          _this.raw = _this.body;
          _this.body = parsed;
          return cb(_this.body, _this.raw);
        });
      } else {
        return cb(this.body);
      }
    };

    NsRpcResponse.prototype.parseCookies = function() {
      var cookie, cookies, parsed, _i, _len, _ref;
      cookies = {};
      if (this.headers['set-cookie'] != null) {
        _ref = this.headers['set-cookie'];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          cookie = _ref[_i];
          parsed = /(\w+)=([^;]+); /.exec(cookie);
          cookies[parsed[1]] = parsed[2];
        }
      }
      return this.cookies = cookies;
    };

    NsRpcResponse.prototype.parseErrors = function(cb) {
      var _this = this;
      if (/<onlineError>/.test(this.body)) {
        return this.parseBody('xml', function(error, raw) {
          _this.error = error;
          return cb(_this);
        });
      } else if (/\{.*"ERROR_MESSAGE"\s*:.*\}/.test(this.body)) {
        return this.parseBody('json', function(parsed, raw) {
          var _ref, _ref2;
          _this.error = {
            code: (_ref = (_ref2 = parsed.ERROR_CODE) != null ? _ref2 : parsed.CODE) != null ? _ref : void 0,
            message: parsed.ERROR_MESSAGE
          };
          return cb(_this);
        });
      } else {
        return cb(this);
      }
    };

    NsRpcResponse.prototype.parseBody = function(format, cb) {
      var body;
      var _this = this;
      if (!(this.body != null)) return;
      switch (format) {
        case 'json':
          body = this.body.replace(/^\s*<!--[\s\S]*?-->\s*$/gm, '');
          if (/^\s*(\{|\[)/.test(body)) {
            this.parsed = JSON.parse(body);
            return cb(this.parsed, this.body);
          }
          break;
        case 'xml':
          if (xml.verify(this.body)) {
            return xml.parse(this.body, function(err, parsed) {
              if (err) {
                return cb(false, _this.body, err);
              } else {
                _this.parsed = parsed;
                return cb(_this.parsed, _this.body);
              }
            });
          }
          break;
        case 'guess':
          if (/^\s*(\{|\[)/.test(this.body)) {
            return this.parseBody('json', cb);
          } else if (xml.verify(this.body, true)) {
            return this.parseBody('xml', cb);
          }
      }
    };

    return NsRpcResponse;

  })();

  module.exports = {
    Client: NsRpcClient,
    Response: NsRpcResponse
  };

}).call(this);