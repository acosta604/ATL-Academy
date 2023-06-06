
import java.util.Scanner;

public class ConversorMillasKm {
    public static void main(String[] args) {

        System.out.println("Ingrese distancia en Millas");
        Scanner sc= new Scanner(System.in);
        double millas= sc.nextDouble();

        if(millas > 0){

            double kilometros = millas*1.60934;

            System.out.printf(millas +"mi "+ "Es igual a: "+ kilometros +"km");

        }else{

            System.out.println("ingrese un numero de millas mayor a 0");
        }

    }
}
