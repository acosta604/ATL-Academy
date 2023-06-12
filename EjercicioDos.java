import java.util.Scanner;

public class EjercicioDos {
    public static void main(String[] args) {

        int[] numeros = new int[5];
        System.out.println("Ingrese 5 numeros");

        Scanner sc = new Scanner(System.in);

        for (int i = 0; i < numeros.length; i++) {
            System.out.println("Ingrese el número " + (i + 1));
            numeros[i] = sc.nextInt();
        }

        System.out.println("Numeros ingresados:");
        for (int numero : numeros) {
            System.out.println(numero);
        }
    	
        int numeroMayor = numeros[0];
        for (int i = 1; i < numeros.length; i++) {
            if (numeros[i] > numeroMayor) {
                numeroMayor = numeros[i];
            }
        }

        System.out.println("El numero mayor es: " + numeroMayor);
    }
    	
    	
    
}
