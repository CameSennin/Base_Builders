// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./AddressBook.sol";

contract AddressBookFactory {
string private salt = "value";
function deploy() external returns (AddressBook) {
AddressBook newAddressBook = new AddressBook();
newAddressBook.transferOwnership(msg.sender);
return newAddressBook;
}
}