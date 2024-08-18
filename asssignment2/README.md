# Blockchain Assignment

This repository contains the solutions for the blockchain assignment, which involves implementing various smart contracts using Solidity. Each contract addresses a specific problem statement, as outlined below.

## Assignment Structure

The repository is organized into separate folders for each question. Each folder contains the corresponding Solidity file and a brief explanation of the contract's functionality.

### 1. Hello World Contract

**File:** `q1.sol`

- **Description:** A simple contract that returns the message "Hello, World!".
- **Functionality:**
  - `getMessage`: Returns the string "Hello, World!".

### 2. Simple Storage

**File:** `q2.sol`

- **Description:** A contract that stores and retrieves a single integer value.
- **Functionality:**
  - `set`: Stores an integer value.
  - `get`: Retrieves the stored integer value.

### 3. Greeting Contract

**File:** `q3.sol`

- **Description:** A contract that allows users to set and get a personalized greeting message.
- **Functionality:**
  - `setGreeting`: Stores a personalized greeting message.
  - `getGreeting`: Retrieves the stored greeting message.

### 4. Simple Counter

**File:** `q4.sol`

- **Description:** A contract that keeps track of a count and allows it to be incremented.
- **Functionality:**
  - `increment`: Increments the count by 1.
  - `getCount`: Retrieves the current count.

### 5. Name Storage

**File:** `q5.sol`

- **Description:** A contract that stores and retrieves a user's name.
- **Functionality:**
  - `setName`: Stores the user's name.
  - `getName`: Retrieves the stored name.

### 6. Basic Voting

**File:** `q6.sol`

- **Description:** A contract that allows users to vote for a candidate and keeps track of votes.
- **Functionality:**
  - `vote`: Casts a vote for a candidate.
  - `getVotes`: Retrieves the vote count for a candidate.

### 7. Owner Access

**File:** `q7.sol`

- **Description:** A contract that restricts certain functions to only the contract owner.
- **Functionality:**
  - `restrictedFunction`: A function that only the owner can call.
  - `getOwner`: Retrieves the address of the contract owner.

### 8. Event Logging

**File:** `q8.sol`

- **Description:** A contract that logs events when certain actions are performed.
- **Functionality:**
  - `logMessage`: Logs a message string as an event.

### 9. Simple Ledger

**File:** `q9.sol`

- **Description:** A contract that maintains a ledger of transactions with basic entries.
- **Functionality:**
  - `addEntry`: Adds an entry to the ledger.
  - `getEntry`: Retrieves an entry from the ledger by index.

### 10. Message Storage

**File:** `q10.sol`

- **Description:** A contract that allows a user to store and retrieve a message string.
- **Functionality:**
  - `storeMessage`: Stores a message string.
  - `retrieveMessage`: Retrieves the stored message string.

## How to Run

To test these smart contracts, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/vibin8/vibin8_AssignmentRepo.git
   ```
