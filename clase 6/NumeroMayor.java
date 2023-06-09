import java.util.Scanner;

public class NumeroMayor {
    public static void main(String[] args) {
        System.out.println("Ingresa 3 números");
        Scanner sc = new Scanner(System.in);

        int primerNumero = sc.nextInt();
        int segundoNumero = sc.nextInt();
        int tercerNumero = sc.nextInt();

        numeroMayor(primerNumero, segundoNumero, tercerNumero);
    }

    public static void numeroMayor(int num1, int num2, int num3) {
        if (num1 > num2 && num1 > num3) {
            System.out.println("El número mayor es: " + num1);
        } else if (num2 > num1 && num2 > num3) {
            System.out.println("El número mayor es: " + num2);
        } else if (num3 > num1 && num3 > num2) {
            System.out.println("El número mayor es: " + num3);
        } else {
            System.out.println("Los números son iguales");
        }
    }
}
