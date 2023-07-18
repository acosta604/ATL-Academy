import java.util.Scanner;

public class CalculadoraPropinas {
    public static void main(String[] args) {

        System.out.println("Ingrese el total de la cuenta");
        Scanner sc= new Scanner(System.in);
        double totalCuenta= sc.nextDouble();
        System.out.println("Ingrese el porcentaje de propina que desea dejar");
        double porcentajePropina= sc.nextDouble();


        if(totalCuenta >0 && porcentajePropina >=0){

            double propina = totalCuenta * (porcentajePropina /100);
            System.out.println("Propina: " + propina+ "%");
            System.out.println("Total: " +"$"+ +totalCuenta );
            System.out.println("Total + propina: "+ (propina + totalCuenta));



        }
    }
}
