exports.root = {
  type: 'blank-container'
};


exports.server = {
  type: 'docker',
  override: {
    development: {
      type: 'process'
    }
  },
  specific: {
    repositoryUrl: 'https://github.com/orxan07/server.git',
    processBuild: 'npm install',
    execute: {
      args: '-p 8000:8000 -d',
      process: 'node server.js'
    }
  }
};
exports.client = {
  type: 'docker',
  specific: {
    repositoryUrl: 'https://github.com/orxan07/client.git',
    processBuild: 'npm install',
    execute: {
      args: '-p 80:80 -d'
    }
  }
};
exports.mongo = {
  type: 'docker',
  specific: {
    name: 'mongo',
    execute: {
      args: '-d -p 27017:27017'
    }
  }
};
