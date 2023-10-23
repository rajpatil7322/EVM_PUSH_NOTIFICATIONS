// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface INotification {
    /// @notice Send a direct message (with subject and body) to an address.
    /// @dev `from` must be equal to either the smart contract address
    /// or msg.sender. `to` must not be the zero address.
    event DirectMsg (address indexed from, address indexed to, string subject, string body);
  
    /// @notice Broadcast a message (with subject and body) to a general public.
    /// @dev `from` parameter must be equal to either the smart contract address
    /// or msg.sender.
    event BroadcastMsg (address indexed from, string subject,string body);
  
    /**
    * @dev Send a notification to an address from the address executing the function
    * @param to address to send a notification to
    * @param subject subject of the message to send
    * @param body body of the message to send
    */
    function walletDM(address to, string memory subject, string memory body) external payable;

    /**
    * @dev Send a notification to an address from the smart contract
    * @param to address to send a notification to
    * @param subject subject of the message to send
    * @param body body of the message to send
    */
    function contractDM(address to, string memory subject, string memory body) external;
  
    /**
    * @dev Send a general notification from the address executing the function
    * @param subject subject of the message to broadcast
    * @param body body of the message to broadcast
    */
    function walletBroadcast(string memory subject, string memory body) external payable;

    /**
    * @dev Send a general notification from the address executing the function
    * @param subject subject of the message to broadcast
    * @param body body of the message to broadcast
    */
    function contractBroadcast(string memory subject, string memory body) external;
}