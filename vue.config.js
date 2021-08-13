const { name } = require('./package.json');
module.exports = {
  devServer: {
    headers: {
      'Access-Control-Allow-Origin': '*',
    },
  },
  configureWebpack: {
    output: {
      library: `${name}-[name]`,
      libraryTarget: 'umd', // bundle the micro app into umd library format
      jsonpFunction: `webpackJsonp_${name}`,
    },
  },
};