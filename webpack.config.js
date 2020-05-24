const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
    entry: './src/index.js',
    mode: 'development',
    output: {
        filename: 'bundle.[id].js',
        path: path.resolve(__dirname, 'dist'),
    },
    plugins: [new MiniCssExtractPlugin({
        filename: '[name].css',
        chunkFilename: '[id].css',
        ignoreOrder: false, // Enable to remove warnings about conflicting order
    })],
    module: {
        rules: [
            {
                test: /\.font\.js/,
                use: [
                    MiniCssExtractPlugin.loader,
                    'css-loader',
                    'webfonts-loader'
                ]
            }
        ]
    }
};