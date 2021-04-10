pragma solidity 0.5.3;
import './myLib.sol' as Akshay;
contract ModifiedSmallestDemo {
    uint public smallest = 2**256 - 1;
    uint[] numbers;

    function addNumber(uint number) 
    external 
    returns (uint small) {
    	uint oldLength = numbers.length;
    	numbers.push(number);
    	small = number < smallest ? number :  smallest;
    	smallest = small;
    	assert(oldLength + 1 == numbers.length);
    }
    
    function contains(uint value) 
    external view returns(bool){
        return Akshay.Utils.arrayContains(numbers, value);
    }
}