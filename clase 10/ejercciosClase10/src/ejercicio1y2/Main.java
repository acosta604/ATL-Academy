package ejercicio1y2;

import static ejercicio1y2.Cuenta.*;
import static ejercicio1y2.Persona.mostrarPersona;

public class Main {

    public static void main(String[] args) {
        System.out.println("-------------------EJERCICIO 1--------------------");

        Persona persona1= new Persona(1,"paula", 23,"20/03/2000","544355");
        mostrarPersona(persona1);

        System.out.println("--------------------------------------------------");
        System.out.println("-------------------EJERCICIO 2--------------------");


        Persona titular = new Persona();
        titular.setNombre("Laura");
        Cuenta cuenta = new Cuenta(titular, 200000);
        mostrarDatosCuenta(cuenta);
        double cantidadDepositada =cuenta.ingresarDinero(50000);
        System.out.println("Cantidad ingresada: " + cantidadDepositada);
        double cantidadRetirada = cuenta.retirarDinero(100000);

        Cuenta.mostrarDatosCuenta(cuenta);
        System.out.println("Cantidad retirada: " + cantidadRetirada);
        System.out.println("--------------------------------------------------");
    }
}
