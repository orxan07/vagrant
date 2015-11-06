// Place service container definitions here.

exports.root = {
  type: 'blank-container'
};

exports.elk = {
  type: 'docker',
specific: {
    repositoryUrl: 'https://github.com/orxan07/elk.git',
    execute: {
      args:'-p 9200:9200 -d -p 5601:5601 -d -p 9300:9300 -d -p 5000:5000 -d'
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
