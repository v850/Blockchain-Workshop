pragma solidity 0.5.3;
library Utils {
    function arrayContains
    (uint256[] memory input, uint256 value) 
    internal pure returns (bool flag){
        flag = false;
        for(uint i = 0; i<input.length; i++){
            if (input[i]==value)
                return true;
        }    
    }
}