# **WalletTracker - Solidity Smart Contract**
![image](https://github.com/user-attachments/assets/214493e2-308e-4dcf-8f01-b715deba380e)



## **Vision**

The **WalletTracker** smart contract aims to provide a secure, decentralized solution for storing, depositing, and withdrawing Ether. It includes an emergency stop mechanism to protect user funds in case of potential risks. The goal is to create a simple and reliable wallet system that empowers users to manage their Ether with peace of mind.

## **Flowchart**

```plaintext
                    +----------------------+
                    |  Contract Deployment |
                    +----------------------+
                               |
                               v
               +-------------------------------+
               | Set Owner (constructor)        |
               +-------------------------------+
                               |
                               v
                +-----------------------------+
                | Emergency Stop Check?       |
                | (notStopped modifier)       |
                +-------------+---------------+
                  | Yes (Continue) | No (Stop) |
                  v                            v
       +---------------------+     +------------------------+
       | Deposit/Withdraw     |     | Operation Blocked Due  |
       | Successful           |     | to Emergency Stop      |
       +---------------------+     +------------------------+
                  |
                  v
       +---------------------+
       | Balance Updated      |
       +---------------------+
```

## **Contract Address**

This contract is deployed on the Ethereum network at:

**Contract Address:** `0xYourContractAddressHere`

> (Note: Replace with the actual deployed contract address once live.)

## **Features**

- **Deposit Ether:** Users can send Ether to the contract by calling the `deposit()` function, which stores their Ether securely.
  
- **Withdraw Ether:** Users can withdraw their Ether by calling `withdraw(uint256 amount)`, provided they have a sufficient balance and the emergency stop is not active.
  
- **View Balance:** Users can call `getBalance()` to view the amount of Ether they have stored in the contract.
  
- **Emergency Stop:** The contract owner can enable or disable the emergency stop to prevent further deposits or withdrawals in case of an issue.

## **Future Scope**

- **Multiple Currency Support:** In the future, the contract could support multiple cryptocurrencies or ERC-20 tokens.
  
- **Time-Locked Withdrawals:** Adding features like time-locked withdrawals to enhance fund security.
  
- **Automated Audits:** Implement automated audits and alerts for suspicious activities.
  
- **Multisignature Control:** Introducing multisignature control for owner privileges, making the emergency stop feature more secure.

## **Contact**

**Developer:**  
name :- karandwip das   
Email: karandwipdas@gmail.com 
GitHub: https://github.com/Karandx 
LinkedIn: https://www.linkedin.com/in/karandwip-das-900266321?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app
contract address:-0x98e76cf6f50dbcbdb74dd9b1cdc51814140e5521
![image](https://github.com/user-attachments/assets/b3d82e79-bece-4b54-9b14-968eef076f73)

network:- Educhain 





