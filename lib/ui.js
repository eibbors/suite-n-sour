(function() {
  var ExportedCSV, FileDownload, NsRecord, NsUiClient, NsUiSession, QuickSummary, SearchColumn, SearchFilter, SearchResults, fs, qs, rpc;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; }, __slice = Array.prototype.slice, __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; }, __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (__hasProp.call(this, i) && this[i] === item) return i; } return -1; };

  rpc = require('./rpc');

  qs = require('querystring');

  fs = require('fs');

  NsUiClient = (function() {

    __extends(NsUiClient, rpc.Client);

    function NsUiClient(options) {
      if (options == null) options = {};
      NsUiClient.__super__.constructor.apply(this, arguments);
      this.session = {};
    }

    NsUiClient.prototype.nlapir = function(attr, elements, options, cb) {
      var nr, _ref, _ref2;
      if ((_ref = elements['@']) == null) elements['@'] = attr;
      nr = {
        nlapiRequest: elements
      };
      return this.xmlr((_ref2 = options.path) != null ? _ref2 : void 0, nr, function(res) {
        if (res.statusCode === 200) {
          console.log(res.body);
          return res.parseBody('xml', function(parsed) {
            return cb(parsed, res);
          });
        } else {
          return cb(null, res);
        }
      });
    };

    NsUiClient.prototype.login = function(user, password, cb) {
      var params, _ref;
      var _this = this;
      if (typeof user === 'object') {
        params = user;
      } else {
        params = {
          email: user
        };
      }
      if ((_ref = params.password) == null) params.password = password;
      return this.formr('/app/login/nllogin.nl', params, function(res) {
        res.success = !res.error && res.statusCode === 302;
        _this.session = new NsUiSession(user, res.cookies);
        return cb(res, _this.session);
      });
    };

    NsUiClient.prototype.loginAs = function(email, password, company, role, cb) {
      var user;
      user = {
        email: email,
        company: company,
        role: role
      };
      return this.login(user, password, cb);
    };

    NsUiClient.prototype.wslogin = function(email, password, company, role, taskid, recordId, edit, cb) {
      var params;
      if (recordId == null) recordId = -1;
      if (edit == null) edit = 'F';
      params = {
        email: email,
        password: password,
        c: company,
        role: role,
        taskid: taskid,
        id: recordId,
        e: edit
      };
      return this.formr('/app/webservices/wslogin.nl', params, function(res) {
        res.success = !res.error && res.statusCode === 302;
        this.session = new NsUiSession(user, res.cookies);
        return cb(res, this.session);
      });
    };

    NsUiClient.prototype.logout = function() {
      var cb, noback, uri, _i;
      noback = 2 <= arguments.length ? __slice.call(arguments, 0, _i = arguments.length - 1) : (_i = 0, []), cb = arguments[_i++];
      if (noback) {
        uri = '/pages/nllogoutnoback.jsp';
      } else {
        uri = '/pages/nllogout.jsp';
      }
      return this.get('/pages/nllogoutnoback.jsp', {}, cb);
    };

    NsUiClient.prototype.switchRoles = function(nkey, hash, cb) {
      return this.get('/app/login/dashboard.nl', {
        query: {
          id: nkey,
          h: hash
        }
      }, function(res) {
        var _ref;
        res.success = !res.error && res.statusCode === 302;
        if (res.success && (this.session != null)) {
          this.session.loadCookies(res.cookies);
        } else {
          if ((_ref = this.session) == null) {
            this.session = new NsUiSession({
              nkey: nkey
            }, res.cookies);
          }
        }
        return cb(res, this.session);
      });
    };

    NsUiClient.prototype.checkForAccess = function(company, email, cb) {
      return this.get('/app/common/entity/checkemailaccess.nl', {
        query: {
          compid: company,
          email: email
        }
      }, function(res) {
        if (/parent.warnemailaccess=false;/.test(res.body)) {
          return cb(false, res);
        } else if (/parent.warnemailaccess=true;/.test(res.body)) {
          return cb(true, res);
        } else {
          return cb(void 0, res);
        }
      });
    };

    NsUiClient.prototype.getContext = function(cb) {
      var _this = this;
      return this.jsonr('getContext', [], {}, function(res) {
        var _ref;
        if (!res.error) {
          _this.session.context = (_ref = res.result) != null ? _ref : {};
        }
        return cb(res, _this.session.context);
      });
    };

    NsUiClient.prototype.getColorPreferences = function(cb) {
      var _this = this;
      return this.jsonr('getColorPreferences', [], {}, function(res) {
        var _ref;
        if (!res.error) {
          _this.session.colors = (_ref = res.result) != null ? _ref : {};
        }
        return cb(res, _this.session.colors);
      });
    };

    NsUiClient.prototype.getAllSessionObjects = function(cb) {
      return this.jsonr('getAllSessionObjects', [], {}, cb);
    };

    NsUiClient.prototype.getSessionObject = function(name, cb) {
      return this.jsonr('getSessionObject', [name], {}, cb);
    };

    NsUiClient.prototype.getScriptPreferences = function(recordType, cb) {
      return this.jsonr('getScriptPrefs', [recordType], {}, cb);
    };

    NsUiClient.prototype.getPreference = function(name, cb) {
      var _this = this;
      return this.jsonr('getPref', [name], {}, function(res) {
        var _ref;
        if (!res.error && (res.result != null) !== null) {
          _this.session.preferences[name] = res.result;
        }
        return cb(res, (_ref = _this.session.preferences[name]) != null ? _ref : null);
      });
    };

    NsUiClient.prototype.getPermission = function(name, cb) {
      return this.jsonr('getPerm', [name], {}, cb);
    };

    NsUiClient.prototype.getFeature = function(name, cb) {
      return this.jsonr('getFeature', [name], {}, cb);
    };

    NsUiClient.prototype.getTaskLinks = function(cb) {
      var _this = this;
      return this.jsonr('getTaskLinks', [], {}, function(res) {
        var _ref;
        if (!res.error) {
          _this.session.taskLinks = (_ref = res.result) != null ? _ref : {};
        }
        return cb(res, _this.session.taskLinks);
      });
    };

    NsUiClient.prototype.getUsageUnits = function(cb) {
      var _this = this;
      return this.jsonr('getUsageUnits', [], {}, function(res) {
        var _ref;
        if (!res.error) {
          _this.session.usageUnits = (_ref = res.result) != null ? _ref : {};
        }
        return cb(res, _this.session.usageUnits);
      });
    };

    NsUiClient.prototype.getRecordTypes = function(cb) {
      var _this = this;
      return this.jsonr('getRecordTypes', [], {}, function(res) {
        var _ref;
        if (!res.error) {
          _this.session.recordTypes = (_ref = res.result) != null ? _ref : {};
        }
        return cb(res, _this.session.recordTypes);
      });
    };

    NsUiClient.prototype.encrypt = function(str, type, key, cb) {
      if (type == null) type = 'sha1';
      if (key == null) key = null;
      return this.jsonr('encrypt', [str, type, key], {}, cb);
    };

    NsUiClient.prototype.decrypt = function(str, type, key, cb) {
      if (type == null) type = 'sha1';
      if (key == null) key = null;
      return this.jsonr('decrypt', [str, type, key], {}, cb);
    };

    NsUiClient.prototype.deleteRecord = function(type, id, cb) {
      return this.jsonr('deleteRecord', [type, id], {}, cb);
    };

    NsUiClient.prototype.exchangeRate = function(fromCurrency, toCurrency, effectDate, cb) {
      var dateStr;
      if (effectDate == null) effectDate = new Date();
      dateStr = "" + (effectDate.getMonth() + 1) + "/" + (effectDate.getDate()) + "/" + (effectDate.getFullYear());
      return this.jsonr('exchangeRate', [fromCurrency, toCurrency, dateStr], {}, cb);
    };

    NsUiClient.prototype.searchGlobal = function(keywords, cb) {
      return this.jsonr('searchGlobal', [keywords], {}, function(res) {
        return cb(new SearchResults(res != null ? res.result : void 0));
      });
    };

    NsUiClient.prototype.searchDuplicate = function(type, fields, id, cb) {
      if (isNaN(id)) id = -1;
      return this.jsonr('searchDuplicate', [type, id, fields], {}, cb);
    };

    NsUiClient.prototype.getSearchColumns = function(type, filter, op, cb) {
      return this.jsonr('getSearchColumns', [type, filter, op], {}, function(res) {
        return cb(res.result);
      });
    };

    NsUiClient.prototype.searchRecord = function(type, id, filters, columns, cb) {
      if (filters == null) filters = [];
      if (columns == null) columns = [];
      if (!Array.isArray(filters)) filters = [filters];
      if (!Array.isArray(columns)) columns = [columns];
      return this.jsonr('searchRecord', [type, id, filters, columns], {
        method: 'POST'
      }, function(res) {
        return cb(new SearchResults(res != null ? res.result : void 0));
      });
    };

    NsUiClient.prototype.resolveURL = function(type, identifier, id, pagemode, cb) {
      switch (type.toLowerCase()) {
        case 'suitelet':
          if (pagemode === true) {
            pagemode = 'external';
          } else if (pagemode === false) {
            pagemode = 'internal';
          }
          break;
        case 'record':
          if (pagemode === true) {
            pagemode = 'edit';
          } else if (pagemode === false) {
            pagemode = 'view';
          }
      }
      return this.jsonr('resolveURL', [type, identifier != null ? identifier : null, id != null ? id : null, pagemode != null ? pagemode : null], {}, cb);
    };

    NsUiClient.prototype.getTotalScriptGovernance = function(bundle, cb) {
      if (bundle == null) bundle = -1;
      return this.jsonr('getTotalScriptGovernance', [bundle], {}, cb);
    };

    NsUiClient.prototype._nlapiRecReq = function(attr, params, cb) {
      var el;
      var _this = this;
      if (params) {
        el = {
          loadParams: params
        };
      } else {
        el = {};
      }
      return this.nlapir(attr, el, {}, function(parsed, res) {
        if (parsed) {
          return cb(new NsRecord().extract(res.parsed), res);
        } else {
          return cb(parsed, res);
        }
      });
    };

    NsUiClient.prototype.createRecord = function(recordType, initializeDefaults, cb) {
      var attr;
      attr = {
        type: 'nlapiCreateRecord',
        recordType: recordType
      };
      return this._nlapiRecReq(attr, initializeDefaults, function(rec, res) {
        if (rec) {
          rec.logOperation('createRecord', {
            initializeDefaults: initializeDefaults
          });
        }
        return cb(rec, res);
      });
    };

    NsUiClient.prototype.loadRecord = function(recordType, id, initializeDefaults, cb) {
      var attr;
      attr = {
        type: 'nlapiLoadRecord',
        recordType: recordType,
        id: id
      };
      return this._nlapiRecReq(attr, initializeDefaults, function(rec, res) {
        if (rec) {
          rec.logOperation('loadRecord', {
            id: id,
            initializeDefaults: initializeDefaults
          });
        }
        return cb(rec, res);
      });
    };

    NsUiClient.prototype.copyRecord = function(recordType, id, initializeDefaults, cb) {
      var attr;
      attr = {
        type: 'nlapiCopyRecord',
        recordType: recordType,
        id: id
      };
      return this._nlapiRecReq(attr, initializeDefaults, function(rec, res) {
        if (rec) {
          rec.logOperation('copyRecord', {
            id: id,
            initializeDefaults: initializeDefaults
          });
        }
        return cb(rec, res);
      });
    };

    NsUiClient.prototype.transformRecord = function(recordType, id, transformType, transformDefaults, cb) {
      var attr;
      attr = {
        type: 'nlapiTransformRecord',
        recordType: recordType,
        id: id,
        transformType: transformType
      };
      return this._nlapiRecReq(attr, transformDefaults, function(rec, res) {
        if (rec) {
          rec.logOperation('transformRecord', {
            type: recordType,
            id: id,
            transformType: transformType,
            transformDefaults: transformDefaults
          });
        }
        return cb(rec, res);
      });
    };

    NsUiClient.prototype.submitRecord = function(record, options, cb) {
      var attr, el, _ref, _ref2, _ref3;
      attr = {
        type: 'nlapiSubmitRecord',
        enableSourcing: (_ref = options.enableSourcing) != null ? _ref : true,
        disableTriggers: (_ref2 = options.disableTriggers) != null ? _ref2 : false,
        ignoreMandatoryFields: (_ref3 = options.ignoreMandatoryFields) != null ? _ref3 : true
      };
      if (typeof record.serialize === 'function') {
        el = record.serialize();
      } else {
        el = {
          record: record
        };
      }
      return this.nlapir(attr, el, {}, cb);
    };

    NsUiClient.prototype.submitField = function(recordType, id, fields, options, cb) {
      var attr, el, k, v, _ref, _ref2;
      attr = {
        type: 'nlapiSubmitField',
        recordType: recordType,
        id: id,
        enableSourcing: (_ref = options.enableSourcing) != null ? _ref : false,
        disableTriggers: (_ref2 = options.disableTriggers) != null ? _ref2 : false
      };
      for (k in fields) {
        v = fields[k];
        el = {
          field: {
            name: k,
            value: v
          }
        };
      }
      return this.nlapir(attr, el, {}, cb);
    };

    NsUiClient.prototype.sendEmail = function(author, recipient, subject, body, cc, bcc, records, cb) {
      var attr, el, k, rf, _i, _len;
      rf = ['transaction', 'entity', 'recordType', 'record', 'activity'];
      attr = {
        type: 'nlapiSendEmail'
      };
      el = {
        author: author,
        recipient: recipient,
        subject: subject,
        body: body,
        cc: cc,
        bcc: bcc
      };
      if (records) {
        for (_i = 0, _len = rf.length; _i < _len; _i++) {
          k = rf[_i];
          el[rf[k]] = records[rf[k]];
        }
      }
      return this.nlapir(attr, el, {}, cb);
    };

    NsUiClient.prototype.sendFax = function(author, recipient, subject, body, records, cb) {
      var attr, el, k, rf, _i, _len;
      rf = ['transaction', 'entity', 'recordType', 'record', 'activity'];
      attr = {
        type: 'nlapiSendFax'
      };
      el = {
        author: author,
        recipient: recipient,
        subject: subject,
        body: body
      };
      if (records) {
        for (_i = 0, _len = rf.length; _i < _len; _i++) {
          k = rf[_i];
          el[rf[k]] = records[rf[k]];
        }
      }
      return this.nlapir(attr, el, {}, cb);
    };

    NsUiClient.prototype.requestURL = function(method, url, query, body, headers, cb) {
      var attr, el, name, value, _ref, _ref2;
      if (method == null) method = 'POST';
      attr = {
        type: 'nlapiRequestURL'
      };
      el = {
        url: url,
        method: method,
        body: body
      };
      for (name in query) {
        value = query[name];
        if ((_ref = el.param) == null) el.param = [];
        el.param.push({
          name: name,
          value: value
        });
      }
      for (name in headers) {
        value = headers[name];
        if ((_ref2 = el.header) == null) el.header = [];
        el.header.push({
          name: name,
          value: value
        });
      }
      return this.nlapir(attr, el, {}, cb);
    };

    NsUiClient.prototype.fetchMyRoles = function(cb) {
      return this.get(this.session.addSticky('ROLEMENU', '/core/elements/compound/NLRoleMenu.nl'), {}, function(res) {
        var m, match, matches, roles;
        matches = res.body.match(/m_cRR_d1\[\d+\] = new Array\('.+\);/g);
        roles = (function() {
          var _i, _len, _results;
          _results = [];
          for (_i = 0, _len = matches.length; _i < _len; _i++) {
            match = matches[_i];
            m = /'([\w\s]+)\',\'(\/app\/login\/dashboard.nl\?id=(\d+)&h=(\w+))/.exec(match);
            _results.push({
              title: m[1],
              url: m[2],
              nkey: m[3],
              hash: m[4]
            });
          }
          return _results;
        })();
        return cb(roles, res);
      });
    };

    NsUiClient.prototype.getHoverData = function(recordType, id, options, cb) {
      var key, query, value;
      recordType = recordType.toUpperCase();
      query = {
        rectype: recordType,
        recordType: recordType,
        id: id,
        templateType: 'DEFAULT_TEMPLATE',
        quicksummary: 'T',
        check: 'F'
      };
      for (key in options) {
        value = options[key];
        query[key] = value;
      }
      return this.get('/app/elements/tooltip/NLTooltipRequestHandler.nl', {
        query: query
      }, function(res) {
        if (res.statusCode === 200) {
          return res.parseBody('json', function(parsed) {
            return cb(new QuickSummary(parsed), res);
          });
        } else {
          return cb(res.parsed, res);
        }
      });
    };

    NsUiClient.prototype.checkForHover = function(recordType, id, cb) {
      return this.getHoverData(recordType, id, {
        check: 'T'
      }, function(parsed, res) {
        return cb(parsed.success, res);
      });
    };

    NsUiClient.prototype["export"] = function(path, options, cb) {
      var query, _ref, _ref2, _ref3, _ref4, _ref5, _ref6;
      if (options == null) options = {};
      query = {
        sortcol: (_ref = options.sortcol) != null ? _ref : '',
        sortdir: (_ref2 = options.sortdir) != null ? _ref2 : 'ASC',
        csv: (_ref3 = options.csv) != null ? _ref3 : 'HTML',
        OfficeXML: (_ref4 = options.OfficeXML) != null ? _ref4 : 'F',
        pdf: (_ref5 = options.pdf) != null ? _ref5 : '',
        showall: (_ref6 = options.showall) != null ? _ref6 : 'F'
      };
      return this.get(path, {
        query: query
      }, cb);
    };

    NsUiClient.prototype.exportPDF = function(path, options, cb) {
      if (options == null) options = {};
      options.pdf = 'T';
      return this["export"](path, options, function(res) {
        if (res.statusCode === 200) {
          return cb(new FileDownload(res, path), res);
        } else {
          return cb(null, res);
        }
      });
    };

    NsUiClient.prototype.exportCSV = function(path, options, cb) {
      if (options == null) options = {};
      path = path.replace(/\.nl(\?[^/]+)?$/, '.csv');
      options.csv = 'Export';
      return this["export"](path, options, function(res) {
        if (res.statusCode === 200) {
          return cb(new ExportedCSV(res), res);
        } else {
          return cb(null, res);
        }
      });
    };

    NsUiClient.prototype.exportXLS = function(path, options, cb) {
      if (options == null) options = {};
      path = path.replace(/\.nl(\?[^/]+)?$/, '.xls');
      options.OfficeXML = 'T';
      options.csv = 'Export';
      return this["export"](path, options, function(res) {
        if (res.statusCode === 200) {
          return cb(new FileDownload(res), res);
        } else {
          return cb(null, res);
        }
      });
    };

    NsUiClient.prototype.fetchSiteMedia = function(id, cb) {
      return this.get('/app/site/media/sitemedia.nl', {
        query: {
          id: id
        }
      }, cb);
    };

    NsUiClient.prototype.previewMedia = function(id, cb) {
      return this.get('/core/media/previewmedia.nl', {
        query: {
          id: id
        }
      }, cb);
    };

    NsUiClient.prototype.previewTemplate = function(id, entity, cb) {
      var query;
      query = {
        id: id
      };
      if (entity) query.entity = entity;
      return this.get('/app/crm/common/merge/previewtemplate.nl', {
        query: query
      }, cb);
    };

    NsUiClient.prototype.respondToEvent = function(accepted, eventId, cb) {
      var response;
      if (accepted == null) accepted = true;
      if (accepted) {
        response = 'accepted';
      } else {
        response = 'declined';
      }
      return this.get('/app/crm/calendar/eventresponse.nl', {
        query: {
          l: 'T',
          istimed: 'T',
          eventId: eventId,
          response: response
        }
      }, cb);
    };

    NsUiClient.prototype.listRecentRecords = function(cb) {};

    NsUiClient.prototype.downloadRecentRecordCSV = function(options, cb) {
      if (options == null) options = {};
      return this.exportCSV('/app/common/otherlists/recentrecords.nl', options, cb);
    };

    NsUiClient.prototype.addShortcut = function(label, taskid, params, cb) {
      if (params == null) params = {};
      params = qs.stringify(params);
      return this.get('/core/pages/addShortcut.nl', {
        query: {
          xml: 'T',
          label: label,
          taskid: taskid,
          params: params
        }
      }, cb);
    };

    return NsUiClient;

  })();

  NsUiSession = (function() {

    function NsUiSession(user, cookies) {
      this.creds = user != null ? user : {
        email: null,
        password: null,
        company: null,
        role: null,
        nskey: null
      };
      this.auth = {
        JSESSIONID: null,
        lastUser: null,
        NS_VER: null
      };
      this.stickyTags = {};
      this.context = {};
      this.recordTypes = {};
      this.taskLinks = {};
      this.usageUnits = {};
      this.objects = {};
      this.preferences = {};
      this.features = {};
      this.colors = {};
      this.loadCookies(cookies);
    }

    NsUiSession.prototype.loadCookies = function(cookies) {
      var name, parts, tag, udata, value, vdata, _ref, _results;
      _results = [];
      for (name in cookies) {
        value = cookies[name];
        switch (name) {
          case 'JSESSIONID':
            _results.push(this.auth.JSESSIONID = this.id = value);
            break;
          case 'lastUser':
            this.auth.lastUser = value;
            udata = value.split('_');
            _results.push(this.lastUser = {
              account: udata[0],
              entity: udata[1],
              role: udata[2],
              input: value
            });
            break;
          case 'NS_VER':
            this.auth.NS_VER = value;
            vdata = value.split('.');
            _results.push(this.nsVersion = {
              year: vdata[0],
              major: vdata[1],
              minor: vdata[2],
              revision: (_ref = vdata[3]) != null ? _ref : null
            });
            break;
          case 'stickytags':
            _results.push((function() {
              var _i, _len, _ref2, _results2;
              _ref2 = value.split(',');
              _results2 = [];
              for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
                tag = _ref2[_i];
                parts = tag.split(':');
                _results2.push(this.stickyTags[parts[0]] = parts[1]);
              }
              return _results2;
            }).call(this));
            break;
          default:
            _results.push(void 0);
        }
      }
      return _results;
    };

    NsUiSession.prototype.addSticky = function(taskId, pathOrObj) {
      var _ref, _ref2, _ref3;
      if (typeof pathOrObj === 'string') {
        if (/\?./.test(pathOrObj)) {
          return "" + pathOrObj + "&t=" + ((_ref = this.stickyTags[taskId]) != null ? _ref : '');
        } else {
          return "" + pathOrObj + "?t=" + ((_ref2 = this.stickyTags[taskId]) != null ? _ref2 : '');
        }
      } else if (typeof pathOrObj === 'object') {
        return pathOrObj.t = (_ref3 = this.stickyTags[taskId]) != null ? _ref3 : '';
      } else {
        return this.stickyTags[taskId];
      }
    };

    return NsUiSession;

  })();

  NsRecord = (function() {

    function NsRecord(recordType, id) {
      this.recordType = recordType != null ? recordType : null;
      this.id = id != null ? id : null;
      this.serialize = __bind(this.serialize, this);
      this.fields = {};
      this.fieldNames = [];
      this.lineTypes = {};
      this.lineFields = {};
      this.lineItems = {};
      this.currentLineItems = {};
      this.currentLineItemIndexes = {};
      this.matrixFields = {};
      this.initialized = false;
      this.operations = [];
    }

    NsRecord.prototype.extract = function(res) {
      var key, mach, matts, rec, value, _i, _len, _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      rec = (_ref = (_ref2 = res.nlapiResponse) != null ? _ref2.record : void 0) != null ? _ref : null;
      for (key in rec) {
        value = rec[key];
        switch (key) {
          case '@':
            this.id = (_ref3 = value.id) != null ? _ref3 : null;
            this.recordType = (_ref4 = value.recordType) != null ? _ref4 : null;
            this.fieldNames = (_ref5 = value.fields.split(',')) != null ? _ref5 : [];
            this.permLevel = (_ref6 = value.perm) != null ? _ref6 : -1;
            break;
          case 'machine':
            for (_i = 0, _len = value.length; _i < _len; _i++) {
              mach = value[_i];
              matts = (_ref7 = mach['@']) != null ? _ref7 : {};
              if (Array.isArray(mach.line)) {
                this.lineItems[matts.name] = mach.line;
              } else if (mach.line != null) {
                this.lineItems[matts.name] = [mach.line];
              }
              this.lineTypes[matts.name] = (_ref8 = matts.type) != null ? _ref8 : null;
              this.lineFields[matts.name] = (_ref9 = matts.fields) != null ? _ref9.split(',') : void 0;
              if (matts.matrixfields != null) {
                this.matrixFields[matts.name] = matts.matrixfields.split(',');
              }
            }
            break;
          default:
            this.setFld(key, value);
        }
      }
      this.initialized = true;
      return this;
    };

    NsRecord.prototype.serialize = function() {
      var el, op, ops, type, _i, _len, _ref, _ref2;
      ops = [];
      type = 'load';
      _ref = this.operations;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        op = _ref[_i];
        el = op.args;
        el['@'] = {
          type: type,
          name: op.operation
        };
        ops.push({
          operation: el
        });
        type = 'data';
      }
      return {
        record: {
          '@': {
            recordType: this.recordType,
            id: (_ref2 = this.id) != null ? _ref2 : null
          },
          operations: ops
        }
      };
    };

    NsRecord.prototype.logOperation = function(operation, args) {
      if (this.initialized) {
        return this.operations.push({
          operation: operation,
          args: args
        });
      }
    };

    NsRecord.prototype.setFieldValue = function(name, value) {
      this.fields[name] = value;
      return this.logOperation('setFieldValue', {
        field: name,
        value: value
      });
    };

    NsRecord.prototype.setFieldValues = function(name, values) {
      if (!Array.isArray(values)) values = [values];
      this.fields[name] = values;
      return this.logOperation('setFieldValues', {
        field: name,
        value: values
      });
    };

    NsRecord.prototype.setFld = function() {
      var name, value, values, _ref;
      name = arguments[0], values = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      if (arguments.length > 2) {
        this.setFieldValues(name, values);
      } else {
        value = (_ref = values[0]) != null ? _ref : null;
        if (Array.isArray(value)) {
          this.setFieldValues(name, value);
        } else {
          this.setFieldValue(name, value);
        }
      }
      return this;
    };

    NsRecord.prototype.insertLineItem = function(type, line) {
      var _base, _ref;
      if ((_ref = (_base = this.lineitems)[type]) == null) _base[type] = [];
      this.lineitems.splice(line, 0, []);
      return this.logOperation('insertLineItem', {
        type: type
      });
    };

    NsRecord.prototype.removeLineItem = function(type, line) {
      var _ref;
      if ((_ref = this.lineitems[type]) != null) _ref.splice(line, 1);
      return this.logOperation('removeLineItem', {
        type: type
      });
    };

    NsRecord.prototype.selectLineItem = function(type, linenum) {
      var key, value, _ref;
      this.currentLineItems[type] = {};
      this.currentLineItemIndexes[type] = linenum;
      _ref = this.lineItems[type];
      for (key in _ref) {
        value = _ref[key];
        this.currentLineItems[type][key] = value;
      }
      return this.logOperation('selectLineNum', {
        type: type,
        linenum: linenum
      });
    };

    NsRecord.prototype.selectNewLineItem = function(type) {
      if (this.lineTypes[type] !== 'edit') throw 'Invalid sublist operation';
      this.currentLineItems[type] = {};
      this.currentLineIndexes[type] = this.lineItems[type].length + 1;
      return this.logOperation('selectNewLineItem', {
        type: type
      });
    };

    NsRecord.prototype.setMatrixValue = function(type, field, column, value) {
      var fh, _ref;
      fh = (_ref = this.fields["" + type + "header"]) != null ? _ref : null;
      this.fields["" + fh + column] = value;
      return this.logOperation('setMatrixValue', {
        type: type,
        field: field,
        column: column,
        value: value
      });
    };

    NsRecord.prototype.isMatrixField = function(type, field) {
      var _ref;
      return __indexOf.call((_ref = this.fields["" + type + "matrixfields"]) != null ? _ref.split(',') : void 0, field) >= 0;
    };

    NsRecord.prototype.getMatrixValue = function(type, field, column) {
      var _ref;
      return (_ref = this.fields[this.fields["" + type + "header"] + column]) != null ? _ref : void 0;
    };

    return NsRecord;

  })();

  QuickSummary = (function() {

    function QuickSummary(response) {
      var freg, key, value, _base, _name, _ref;
      this.fields = {};
      for (key in response) {
        value = response[key];
        freg = /([A-Za-z]+)(\d+)/gm.exec(key);
        if (freg) {
          if ((_ref = (_base = this.fields)[_name = freg[2]]) == null) {
            _base[_name] = {};
          }
          switch (freg != null ? freg[1] : void 0) {
            case 'fieldName':
              this.fields[freg[2]].name = value;
              break;
            case 'display':
              this.fields[freg[2]].display = value;
              break;
            case 'fieldValue':
              if (value === '&nbsp;') value = '';
              this.fields[freg[2]].value = value;
          }
        } else {
          this[key] = value;
        }
      }
    }

    QuickSummary.prototype.getVisibleFields = function() {
      var fld, i, _ref, _results;
      _ref = this.fields;
      _results = [];
      for (i in _ref) {
        fld = _ref[i];
        if (fld.display === 'visible') _results.push(fld);
      }
      return _results;
    };

    return QuickSummary;

  })();

  SearchFilter = (function() {

    function SearchFilter() {
      var join, name, operator, options, values, _i, _ref, _ref2, _ref3, _ref4;
      name = arguments[0], join = arguments[1], operator = arguments[2], values = 5 <= arguments.length ? __slice.call(arguments, 3, _i = arguments.length - 1) : (_i = 3, []), options = arguments[_i++];
      this.name = name;
      this.join = join;
      this.operator = operator;
      this.values = values;
      this.formula = (_ref = options.formula) != null ? _ref : null;
      this.summarytype = (_ref2 = options.summarytype) != null ? _ref2 : null;
      this.isor = (_ref3 = options.isor) != null ? _ref3 : false;
      this.isnot = (_ref4 = options.isnot) != null ? _ref4 : false;
      this.leftparens = 0;
      this.rightparens = 0;
      return this;
    }

    SearchFilter.prototype.addValue = function() {
      var values;
      values = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      this.values = this.values.concat(values);
      return this;
    };

    return SearchFilter;

  })();

  SearchColumn = (function() {

    function SearchColumn(name, join, summary, options) {
      var _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      this.name = name;
      this.join = join;
      this.summary = summary;
      if (options == null) options = {};
      this.type = (_ref = options.type) != null ? _ref : null;
      this.label = (_ref2 = options.label) != null ? _ref2 : null;
      this.sortdir = (_ref3 = options.sortdir) != null ? _ref3 : null;
      this.index = (_ref4 = options.index) != null ? _ref4 : -1;
      this.functionid = (_ref5 = options.functionid) != null ? _ref5 : null;
      this.formula = (_ref6 = options.formula) != null ? _ref6 : null;
      this.userindex = (_ref7 = options.userindex) != null ? _ref7 : -1;
      this.whenorderedby = (_ref8 = options.whenorderedby) != null ? _ref8 : null;
      this.whenorderedbyjoin = (_ref9 = options.whenorderedbyjoin) != null ? _ref9 : null;
      return this;
    }

    return SearchColumn;

  })();

  SearchResults = (function() {

    function SearchResults(result) {
      var _ref, _ref2;
      if (result == null) result = {};
      this.columns = (_ref = result.columns) != null ? _ref : [];
      this.rows = (_ref2 = result.rows) != null ? _ref2 : [];
    }

    SearchResults.prototype.getRowObjects = function() {
      var cell, obj, row, _i, _j, _len, _len2, _ref, _ref2, _results;
      _ref = this.rows;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        row = _ref[_i];
        obj = {
          id: row.id,
          recordType: row.recordType
        };
        _ref2 = row.cells;
        for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
          cell = _ref2[_j];
          obj[cell.name] = cell.value;
        }
        _results.push(obj);
      }
      return _results;
    };

    SearchResults.prototype.buildArray = function(inclHeader) {
      var cell, col, row, table, tr, _i, _j, _k, _len, _len2, _len3, _ref, _ref2, _ref3;
      if (inclHeader == null) inclHeader = true;
      table = [];
      if (inclHeader) {
        table.push([]);
        _ref = this.columns;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          col = _ref[_i];
          table[0][col.index - 1] = col.name;
        }
      }
      _ref2 = this.rows;
      for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
        row = _ref2[_j];
        tr = [];
        _ref3 = row.cells;
        for (_k = 0, _len3 = _ref3.length; _k < _len3; _k++) {
          cell = _ref3[_k];
          tr[cell.index - 1] = cell.value;
        }
        table.push(tr);
      }
      return table;
    };

    return SearchResults;

  })();

  FileDownload = (function() {

    function FileDownload(response, path) {
      var cdispo, ctype, rfile, _ref, _ref2, _ref3, _ref4, _ref5;
      if (response == null) response = {};
      ctype = /(\S+)\/(\S+); charset=(\S+)/i.exec((_ref = (_ref2 = response.headers) != null ? _ref2['content-type'] : void 0) != null ? _ref : '');
      if (ctype) {
        this.type = ctype[1];
        this.format = ctype[2];
        this.encoding = ctype[3];
      }
      cdispo = /inline;filename="(.*)"/i.exec((_ref3 = (_ref4 = response.headers) != null ? _ref4['content-disposition'] : void 0) != null ? _ref3 : '');
      if (cdispo) {
        this.filename = cdispo[1];
      } else {
        rfile = /\b(\w+\.\w+)(\?[^\/]+)?$/i.exec(path != null ? path : "./response." + response.requestId);
        if (rfile) {
          this.filename = "" + response.requestId + "." + rfile[1] + "." + ((_ref5 = this.format) != null ? _ref5 : 'log');
        } else {
          this.filename = "" + response.requestId + ".log";
        }
      }
      this.raw = response.body;
    }

    FileDownload.prototype.save = function(filename, cb) {
      var _ref, _ref2;
      if (typeof cb === 'function') {
        return fs.writeFile(filename, this.raw, (_ref = this.encoding) != null ? _ref : 'utf-8', cb);
      } else {
        return fs.writeFileSync(filename, this.raw, (_ref2 = this.encoding) != null ? _ref2 : 'utf-8');
      }
    };

    return FileDownload;

  })();

  ExportedCSV = (function() {

    __extends(ExportedCSV, FileDownload);

    function ExportedCSV(response) {
      var c, csvrex, i, line, r, rexparts, row, trimmed, _i, _len, _ref, _ref2, _ref3;
      if (response == null) response = {};
      ExportedCSV.__super__.constructor.apply(this, arguments);
      if (this.raw) {
        trimmed = this.raw.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
        this.lines = trimmed.split(/\n\n*/);
        this.columns = (_ref = this.lines[0]) != null ? _ref.split(',') : void 0;
        rexparts = new Array(this.columns.length).join(',([^,]+|"[^"]+")');
        csvrex = new RegExp("^([^,]+|\"[^\"]+\")" + rexparts + "$");
        this.rows = [];
        _ref2 = this.lines;
        for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
          line = _ref2[_i];
          r = csvrex.exec(line);
          if (r) {
            row = {};
            _ref3 = this.columns;
            for (i in _ref3) {
              c = _ref3[i];
              row[c] = r[Number(i) + 1];
            }
          } else {
            row = line.split(',');
          }
          this.rows.push(row);
        }
      }
    }

    return ExportedCSV;

  })();

  module.exports = {
    Client: NsUiClient,
    Session: NsUiSession,
    Search: {
      Results: SearchResults,
      Column: SearchColumn,
      Filter: SearchFilter
    }
  };

}).call(this);
