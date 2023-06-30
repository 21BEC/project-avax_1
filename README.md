# Metacrafters Project-2 

This repository contains the source code for the `project` smart contract. The contract is written in Solidity version 0.8.9 and implements the `get_back` function with require, assert, and revert statements, along with the `leftBalance` function.
## Contract Details
### Description
The `project` contract allows the contract owner to get_back funds from the contract balance. The contract owner is set during the contract deployment.
### Functions
#### `constructor()`
The constructor function is executed once in a contract, it sets the owner to the address of the message sender
#### `get_back(uint money)`
The `get_back` function allows the contract owner to withdraw a specified amount of funds from the contract balance. it checks if the following conditions are met or not the conditions are-
- The amount must be greater than zero.
- The contract balance must be equal to or greater than the requested money.
If the conditions are satisfied, then the function attempts to transfer the funds to the message sender using the `call` function. 
The `assert` statement checks if the transfer was successful. If the transfer fails, the function reverts with an error message using the `revert` statement.
#### `leftBalance()`
The `leftBalance` function is a view function that returns the current balance of the contract.
## License
This project is licensed under the MIT License. See the [LICENCE](https://github.com/21BEC/project-avax_1/blob/main/LICENSE) file for details.
## Credits
This project is a solution to the project task provided by MetaCrafters.
