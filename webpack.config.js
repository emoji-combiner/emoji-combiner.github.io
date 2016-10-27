// webpack.config.js
module.exports = {
  entry: './index.ls',
  output: {
    filename: 'index.js'       
  },
  module: {
    loaders: [
      { test: /\.ls$/, loader: 'livescript-loader' }
    ]
  }
};
