// https://eth-ropsten.alchemyapi.io/v2/cTKYKAqcPYXoUXjEFnUS15guSjvdI5mT

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/cTKYKAqcPYXoUXjEFnUS15guSjvdI5mT',
      accounts: ['1f692ede1b5abe7f9e01bf940bc2ed11283ae3fe741fe77d803860c8ed7e8c5f']
    }
  }
}