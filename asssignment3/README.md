# Lottery System Smart Contract

This folder contains the implementation of a Lottery System Smart Contract using Solidity. The contract allows users to participate in a lottery by sending Ether, and a random winner is selected by the contract manager.

## Contract Details

- **Manager:** The address that deploys the contract becomes the manager. Only the manager can pick the winner.
- **Players:** An array that holds the addresses of participants.
- **Enter Function:** Players can enter the lottery by sending Ether to the contract.
- **Random Function:** Generates a pseudo-random number to select a winner. Note that this method is not secure for high-value lotteries.
- **Pick Winner Function:** Allows the manager to randomly select a winner from the list of players and transfer the contract balance to the winner.
- **Restricted Modifier:** Ensures that only the manager can call certain functions, like picking the winner.

## How to Use

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/vibin8/vibin8_AssignmentRepo.git
   ```
