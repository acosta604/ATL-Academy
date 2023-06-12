import java.util.Scanner;

public class EjercicioTres {
    public static void main(String[] args) {
        int[] numeros = new int[5];
        System.out.println("Ingrese 5 numeros:");

        Scanner sc = new Scanner(System.in);

        for (int i = 0; i < numeros.length; i++) {
            System.out.println("Ingrese el numero " + (i + 1));
            numeros[i] = sc.nextInt();
        }

        System.out.println("Numeros ingresados:");
        for (int numero : numeros) {
            System.out.println(numero);
        }

        int numeroMayor = calcularNumeroMayor(numeros);
        System.out.println("El número mayor es: " + numeroMayor);

        double promedio =
        calcularPromedio(numeros);
        System.out.println("El promedio es: " + promedio);
    }
//método para calcular el numero mayor del array
    public static int calcularNumeroMayor(int[] numeros) {
        int numeroMayor = numeros[0];
        for (int i = 1; i < numeros.length; i++) {
            if (numeros[i] > numeroMayor) {
                numeroMayor = numeros[i];
            }
        }
        return numeroMayor;
    }
// método para calcular el promedio de los numeros del array
    public static double calcularPromedio(int[] numeros) {
        int suma = 0;
        for (int num : numeros) {
            suma += num;
        }
        double promedio = (double) suma / numeros.length;
        return promedio;
    }
}

