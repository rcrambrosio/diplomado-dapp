pragma solidity ^0.6.0;

contract ActaNacimiento {
// Nombre, apellido, dia nac, mes nac, año nac, entidad nac, ciudad nac., genero.

    string nombre;
    string apellido;
    string dia;
    string mes;
    string anio;
    string entidad;
    string ciudad;
    string genero;

    constructor() public{
        nombre = "Ricardo";
        apellido = "Cruz";
        dia = "23";
        mes = "Agosto";
        anio = "1996";
        entidad = "Estado de México";
        ciudad = "Neza";
        genero = "Masculino";
    }

    function getActa() public view returns(string memory) {
        return string(abi.encodePacked(nombre, " ", apellido, " ", entidad, " ", ciudad));
}
