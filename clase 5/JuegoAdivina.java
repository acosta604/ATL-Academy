import java.util.Scanner;

public class JuegoAdivina {

    public static void main(String[] args) {

        int numeroelegido=0;
        int numeroRandom = (int) (Math.random() * 101);


        while (numeroelegido != numeroRandom) {

            System.out.print("ingrese un número entre el 1 y 100: ");
            Scanner sc = new Scanner(System.in);
            numeroelegido = sc.nextInt();

            if (numeroRandom < numeroelegido) {

                System.out.println("El número es más pequeño");


            } else if (numeroRandom > numeroelegido) {
                System.out.println("El número es más grande");

            }  if(numeroelegido == numeroRandom){
                System.out.println("--------------------------");
                System.out.println("|   FELICIDADES GANASTE  |");
                System.out.println("--------------------------");
            }
        }
    }
}
