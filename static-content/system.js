// Define the system topology here. The topolgy should reference 
// containers defined in definitions/services.js

exports.name = 'static';
exports.namespace = 'static';
exports.id = '8a432b57-cf08-4531-a3b4-919793681e1d';

exports.topology = {

  production: {
    root: ['elk', 'mongo','rabbit']
  }
};
