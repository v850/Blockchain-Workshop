pragma solidity ^0.5.3;

contract ExampleDemo{ 
    uint smallest = 2**256 - 1;
    uint[] numbers;

    function addNumber(uint number) 
    external 
    returns (uint) {
        	uint oldLength = numbers.length;
        	numbers.push(number);
        	smallest = number < smallest ? number :  smallest;
        	assert(oldLength + 1 == numbers.length);
        	return smallest;
    }

    function getSmallest() public view returns(uint){
        return smallest;
    }
}