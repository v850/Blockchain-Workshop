//First Example.. Single line comment
pragma solidity 0.5.2;
//import './other_solidity_source_file.sol';
/*
* @title    HelloExample
* @author   Fajge Akshay M.
* @guide    Prof. Raju Halder
* @notice   Blockchain and Solidity tutorial for course CS577
*/

/*
Multiline comments
reachus@email   fajge_1921cs12@iitp.ac.in; halder@iitp.ac.in
*/

contract Hello {
    function getMessage() public pure returns (string memory) {
        return "Hello From Solidity";
    }
}