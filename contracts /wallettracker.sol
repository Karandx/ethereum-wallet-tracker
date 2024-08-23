// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WalletTracker {
    address public owner;
    bool public emergencyStop = false;
    
    mapping(address => uint256) private balances;

    // Constructor sets the owner of the contract
    constructor() {
        owner = msg.sender;
    }

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }
    
    // Modifier to check if emergency stop is active
    modifier notStopped() {
        require(!emergencyStop, "Contract is stopped");
        _;
    }

    // Function to deposit Ether
    function deposit() public payable notStopped {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw Ether
    function withdraw(uint256 amount) public notStopped {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Function to view balance
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    // Owner can trigger emergency stop
    function toggleEmergencyStop() public onlyOwner {
        emergencyStop = !emergencyStop;
    }
}
    
