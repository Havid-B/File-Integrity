var FileIntegrity = artifacts.require("FileIntegrity");

module.exports = function(deployer) {
  deployer.deploy(FileIntegrity);
};
