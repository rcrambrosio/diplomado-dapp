pragma solidity 0.6.0;

contract HelloWorld{

    // Tipos de variables
    uint public myUint;
    int public myInt;
    bool public myBoolean;
    address public myAddress;
    string public myString;

    // Variables globales
    uint public timestamp;
    address public sender;
    uint public value;

    // Estructuras
    struct birthday {
        uint8 month;
        uint8 day;
        uint16 year;
    }

    mapping(uint => string) public alumnos;

    function addAlumno(uint _alumnoId, string memory _alumnoNombre) public{
        alumnos[_alumnoId] = _alumnoNombre;
    }

    birthday public bd;

    function setBirthDay(uint8 _month, uint8 _day, uint16 _year) public{
        bd.month = _month;
        bd.day = _day;
        bd.year = _year;
    }

    function setMyUint(uint _myUint) public{
        myUint = _myUint;
    }

    function setMyInt(int _myInt) public{
        myInt = _myInt;
    }

    function setMyBoolean(bool _myBoolean) public{
        myBoolean = _myBoolean;
    }

    function setMyAddress(address _myAddress) public{
        myAddress = _myAddress;
    }

    function setMyString(string memory _myString) public{
        myString = _myString;
    }

    function setTimestamp() public{
        myUint = block.timestamp;
    }

    function setSender() public{
        sender = msg.sender;
    }

    function setValue() public payable{
        value = msg.value;
    }
}
