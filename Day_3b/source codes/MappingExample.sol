pragma solidity >=0.5.0 <0.6.0;

contract MapStructExample{ 	
    enum PersonType { Faculty, Staff, Student} 
    struct Person {
            string regNo;
            PersonType pType;
    }
        
    mapping (uint => Person) persons;
    uint noOfPersons;
    
    function register(string memory _regNo, PersonType _pType) public returns(uint){
        uint uid = noOfPersons;
        Person memory newPerson;
        newPerson.regNo = _regNo;
        newPerson.pType = _pType;
        persons[noOfPersons] = newPerson;
        noOfPersons += 1;
        return uid;
    }
    
    function getPersonType(int uid) external view returns (PersonType) {
        return persons[uint(uid)].pType;        
    }
}