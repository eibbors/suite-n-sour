(function() {
  var Element, cdata, escapeXML, parseXML, renderXML, verifyXML, xml2js;

  xml2js = require('xml2js');

  verifyXML = function(str, simple) {
    var begx, res, xmlv;
    if (simple == null) simple = false;
    if (simple) return /\S/.exec(str)[0] === '<';
    xmlv = /<\?xml(\s+(\S+)=.(\S+).\s+(\S+)=.(\S+).)?.*\?>/gi.exec(str);
    if (xmlv) {
      res = {
        matched: xmlv[0]
      };
      if (xmlv[2]) res[xmlv[2]] = xmlv[3];
      if (xmlv[4]) res[xmlv[4]] = xmlv[5];
    } else {
      begx = /^\s*((<!--.*-->)|(<(\w+).*>))/gi.exec(str);
      if (begx) {
        res = {
          matched: begx
        };
      }
    }
    return res || false;
  };

  parseXML = function(str, cb, options) {
    var parser;
    if (options == null) {
      options = {
        explicitRoot: true,
        normalize: false,
        trim: false
      };
    }
    parser = new xml2js.Parser(options);
    return parser.parseString(str, function(err, res) {
      if (!err) {
        return cb(err, res);
      } else {
        return cb(err, str);
      }
    });
  };

  renderXML = function(obj) {
    var ai, ak, av, key, pload, sibl, value, _i, _len, _ref;
    pload = '';
    for (key in obj) {
      value = obj[key];
      switch (typeof value) {
        case 'object':
          if (Array.isArray(value)) {
            for (_i = 0, _len = value.length; _i < _len; _i++) {
              ai = value[_i];
              sibl = {};
              sibl[key] = ai;
              pload += "" + (renderXML(sibl));
            }
          } else {
            pload += "<" + key;
            if (value['@'] != null) {
              if (typeof value['@'] === 'object') {
                _ref = value['@'];
                for (ak in _ref) {
                  av = _ref[ak];
                  if (typeof av === 'undefined') {
                    pload += " " + ak;
                  } else {
                    pload += " " + ak + "=\"" + av + "\"";
                  }
                }
              } else {
                pload += " " + value['@'];
              }
              delete value['@'];
            }
            if (value.constructor === 'Date') {
              pload += ">" + (value.toGMTString()) + "</" + key + ">";
            } else {
              pload += ">" + (renderXML(value)) + "</" + key + ">";
            }
          }
          break;
        case 'function':
          pload += "<" + key + ">" + (value()) + "</" + key + ">";
          break;
        case 'undefined':
        case null:
          pload += "<" + key + "/>";
          break;
        default:
          pload += "<" + key + ">" + value + "</" + key + ">";
      }
    }
    return pload;
  };

  escapeXML = function(str) {
    return str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;').replace(/'/g, '&apos;');
  };

  cdata = function(value, escape) {
    var k, v;
    if (escape == null) escape = true;
    if (typeof value === 'object') {
      for (k in value) {
        v = value[k];
        value[k] = cdata(v);
      }
    } else {
      if (!/^\s*<!\[CDATA\[/.test(value)) value = "<![CDATA[" + value + "]]>";
    }
    return value;
  };

  Element = (function() {

    function Element(name, options) {
      var _ref, _ref2, _ref3, _ref4;
      this.name = name;
      if (typeof options === 'object') {
        this.attributes = (_ref = (_ref2 = options.attributes) != null ? _ref2 : options['@']) != null ? _ref : {};
        this.value = (_ref3 = options.value) != null ? _ref3 : void 0;
        this.type = (_ref4 = options.type) != null ? _ref4 : null;
      } else if (options) {
        this.value = options;
      }
    }

    return Element;

  })();

  module.exports = {
    parse: parseXML,
    render: renderXML,
    verify: verifyXML,
    escape: escapeXML,
    cdata: cdata
  };

}).call(this);
