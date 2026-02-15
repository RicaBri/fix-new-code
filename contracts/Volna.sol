// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Импортируем готовый контракт ERC20 от OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleRandomToken is ERC20 {
    /**
     * @param _name  Имя токена
     * @param _symbol Символ токена
     * @param _initialSupply Начальная эмиссия в целых токенах
     */
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _initialSupply
    ) ERC20(_name, _symbol) {
        // Функция _mint сама создаст токены, запишет их на баланс 
        // и вызовет правильное событие Transfer.
        // decimals() в OpenZeppelin по умолчанию равно 18.
        _mint(msg.sender, _initialSupply * 10 ** decimals());
    }
}