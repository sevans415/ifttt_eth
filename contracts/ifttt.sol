pragma solidity ^0.4.4;

contract iftt {
  address public agent1;
  address public agent2;
  string clause1;
  string clause2;
  
  function iftt(address agent2, string clause1, string clause2) {
    agent1 = msg.sender;
    agent2 = agent2;
    clause1 = clause1;
    clause2 = clause2;
  }

  function contractEnd() {

  }

  


}