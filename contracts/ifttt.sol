pragma solidity ^0.4.8;

contract ifttt{ 
    string clause1 = "replacement1";
    string clause2 = "replacement2";

    event Sent(address from, address to, uint amount);
    
    function ifttt(address agent2, string clause1, string clause2) {
        agent2 = agent2;
    }
    
    function action(amt) {    
        if (clause1) {
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
