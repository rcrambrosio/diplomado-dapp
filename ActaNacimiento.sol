pragma solidity ^0.6.0;

contract ActaNacimiento {

    uint dateRegister;

    struct actanacimiento {
        uint8 month;
        uint8 day;
        uint16 year;
        string name;
        string lastName;
        address addressD;
        uint dateRegistered;
    }

    mapping (address => actanacimiento) public actas;

    actanacimiento public acta;

    constructor() public{
        acta.month = 8;
        acta.day = 23;
        acta.year = 1996;
        acta.name = "Ricardo";
        acta.lastName = "Cruz";
        acta.dateRegistered = block.timestamp;
    }

    function setAddress(address _myAddress) public{
        acta.addressD = _myAddress;
    }

    function setActa(uint8 _month, uint8 _day, uint16 _year, string memory _name, string memory _lastName, address _address) public{
        acta.month = _month;
        acta.day = _day;
        acta.year = _year;
        acta.name = _name;
        acta.lastName = _lastName;
        acta.dateRegistered = block.timestamp;
        acta.addressD = _address;
        actas[_address] = acta;
    }

    function getTimestamp(address _address) public view returns(uint){
        return  actas[_address].dateRegistered;
    }

}
