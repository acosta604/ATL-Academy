import java.util.Scanner;

public class CalculadoraDescuento {
    public static void main(String[] args) {


        System.out.println("Ingrese precio del producto");
        Scanner sc= new Scanner(System.in);
        double precio= sc.nextDouble();
        System.out.println("Ingrese porcentaje de descuento");
        double descuento= sc.nextDouble();

        if (precio >0  && descuento >=0){

            double precioFinal= precio-(precio * descuento/100);
            System.out.println("descuento :"+ descuento + "%");
            System.out.println("el precio final del producto es: "+ "$"+ precioFinal );

        }else{
            System.out.println("ingrese un precio valido");


        }
    }
}
