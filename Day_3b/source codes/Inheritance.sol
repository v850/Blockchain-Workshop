pragma solidity >=0.5.2 <0.5.4;

contract Person {
    function does() 
    public returns (string memory);
}

contract Info {
    string name;
    constructor(string memory _name) internal{
        name = _name;
    }
    
    function getName() 
    public view returns (string memory) {
        return name;
    }
}

contract Student is Person, Info {
    function does() 
    public returns (string memory) { 
        return "Learning"; 
    }
    constructor(string memory _name) 
    Info(_name) public{
    }
}

contract Faculty is Info, Person {
    string name = "Dr. Raju Halder";
    
    function does() 
    public returns (string memory) { 
        return "Teaching"; 
        
    }
    constructor() Info(name) public{
            
    }
}

contract TA is Person, Info("Fajge Akshay") {
    function does() 
    public returns (string memory) { 
        return "helps Teachers and Studetns"; 
    }
}

contract Test{
    TA ta = new TA();
    Faculty faculty = new Faculty();
    Student student = new Student('Your Name');
    
    function getTA() public view returns (string memory){
        return ta.getName();
    }
    
    function getFaculty() public view returns (string memory){
        return faculty.getName();
    }
    
    function getStudent() public view returns (string memory){
        return student.getName();
    }
}