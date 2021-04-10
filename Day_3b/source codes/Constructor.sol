pragma solidity 0.5.3;

contract ConstructorExample {
    //AutoIncrementor
    int256 private incrementBy;
    
    constructor(int256 _incrementBy) public {
        incrementBy = _incrementBy;
    }
    
    function increment(int256 number) public view returns(int256){
        return number + incrementBy;
    }
}