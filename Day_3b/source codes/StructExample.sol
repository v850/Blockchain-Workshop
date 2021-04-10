pragma solidity ^0.5.3;

contract StructExample{ 	
    enum PersonType { Faculty, Staff, Student} 
    struct Person {
            string regNo;
            address pAddress;
            PersonType pType;
    }
    Person[] persons;
    
    function register(string memory _regNo, PersonType _pType) public returns(uint uid){
        uid = persons.length;
        Person memory newPerson;
        newPerson.regNo = _regNo;
        newPerson.pType = _pType;
        persons.push(newPerson);
        return uid;
    }
    
    function getPersonType(uint uid) external view returns (PersonType) {
        return persons[uid].pType;        
    }
}
