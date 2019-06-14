var exec = require('cordova/exec');

exports.has = function () {
    return new Promise((resolve, reject) => {
        exec((hasCutout) => {
            resolve(hasCutout === 'true');
        }, reject, 'cutout', 'has');
    })
};
