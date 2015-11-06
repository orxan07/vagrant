// Define the system topology here. The topolgy should reference 
// containers defined in definitions/services.js

exports.name = 'dynamic';
exports.namespace = 'dynamic';
exports.id = '6abe25b9-6544-45f2-9eed-fe976d006b87';

exports.topology = {

  production: {
    root: ['server', 'client']
  },
  development: {
    root: ['server']
  }
};