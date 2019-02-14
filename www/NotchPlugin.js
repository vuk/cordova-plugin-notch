var exec = require('cordova/exec');

exports.has = function (arg0, success, error) {
    exec(success, error, 'NotchPlugin', 'has', [arg0]);
};
