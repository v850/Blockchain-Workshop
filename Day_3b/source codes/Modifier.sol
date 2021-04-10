pragma solidity 0.5.3;

contract ModifierExample {
    //AutoIncrementor
    int256 private incrementBy;
    
    modifier onlyPositive(int incrBy) {
        require(incrBy > 0, 
        "_incrementBy must be > 0");
        _;
    }
    
    constructor(int256 _incrementBy) 
    public onlyPositive(_incrementBy) {
        incrementBy = _incrementBy;
    }
    
    function increment(int256 number) 
    public view returns(int256) {
        return number + incrementBy;
    }
}