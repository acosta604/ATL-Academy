
import java.util.*;

public class CalculadoraEdadPerro {
    public static void main(String[] args) {

        System.out.println("Ingrese la edad de su perro en años Humanos");
        Scanner sc = new Scanner(System.in);
        int edad= sc.nextInt();

        if(edad >0){

            edad*=7;
            System.out.println("la edad de su perro es: " + edad);

        }else{

            System.out.println("ingrese un numero mayor a 0");
        }




    }


}
