pragma solidity ^0.4.8;

contract ifttt{ 
    string clause1 = "replacement1";
    string clause2 = "replacement2";
    address agent2;
    bool clause1completed = false;

    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);
    
    function ifttt(address agent2, string clause1, string clause2) {
        agent2 = agent2;
    }
    
    function action(uint256 amt) {    
        if (clause1completed) {
            send(agent2, amt); 
        }
    }

    function send(address receiver, uint amount) {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
}
