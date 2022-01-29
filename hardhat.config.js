// https://eth-ropsten.alchemyapi.io/v2/4tCGh-7R7R8MvCoebfnsmjabKhEQ8qdD
require("@nomiclabs/hardhat-waffle");


module.exports = {
  solidity: "0.8.4",
  networks:{
    ropsten:{
       url:process.env.url,
       accounts:[process.env.Account]
    }
  }
};
