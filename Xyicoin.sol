pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Xyicoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Xyicoin(address _owner)  UpgradeableToken(_owner) {
    name = "Xyicoin";
    symbol = "XYI";
    totalSupply = 100000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}