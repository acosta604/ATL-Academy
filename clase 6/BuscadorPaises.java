import java.util.Scanner;

public class BuscadorPaises {
    public static void main(String[] args) {
        System.out.print("Escribe el nombre de un país: ");
        Scanner sc = new Scanner(System.in);
        String pais = sc.nextLine();
        System.out.println("Link Google Maps: " + "https://www.google.com/maps/search/" + pais);
    }
}