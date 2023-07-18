
import java.util.Scanner;
public class PromedioNumeros {
	public static void main(String[] args) {
		System.out.println("Ingresa 3 numeros");
		 Scanner sc =new Scanner(System.in);
		 double num1=sc.nextInt();
		 double num2=sc.nextInt();
		 double num3 =sc.nextInt();
		 double promedio=(num1+num2+num3)/3;
		 System.out.println("el promedio es: "+promedio);
		 			
			}
}