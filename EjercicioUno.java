import java.util.Scanner;
public class EjercicioUno{
	public static void main(String[] args) {
		 
		 int[] numeros = new int[5];
		 System.out.println("Ingrese 5 numeros");
		 
		Scanner sc = new Scanner(System.in);
		
		for (int i = 0; i < numeros.length; i++) {
     System.out.println("ingrese numero "+ (i+1));
            numeros[i] = sc.nextInt();
        }
        System.out.println("Numeros ingresados:");
        for (int numero: numeros) {
            System.out.println(numero);
        }
		  
		  
		  
	}
}