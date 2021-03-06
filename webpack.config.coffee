webpack = require "webpack"

module.exports =
  entry: "./src/main.coffee"
  output:
    path: "./build"
    publicPath: "/"
    filename: "main.js"
  module:
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" }
      { test: /\.css$/, loader: "style-loader!css-loader" }
      { test: /\.scss$/, loader: "style-loader!css-loader!sass-loader" }
      { test: /\.html$/, loader: "html-loader" }
    ]
  resolve:
    extensions: ["", ".js", ".coffee"]
  plugins: [
    new webpack.optimize.UglifyJsPlugin({minimize: true})
  ]
