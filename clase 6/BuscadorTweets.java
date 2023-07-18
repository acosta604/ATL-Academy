import java.util.Scanner;

public class BuscadorTweets {
    public static void main(String[] args) {
        System.out.print("Escribe el nombre de un famoso: ");
        Scanner sc = new Scanner(System.in);
        String nombre = sc.nextLine();
        String nombreSinEspacios = nombre.replaceAll("\\s+", "");
        System.out.println("Link: " + "https://twitter.com/search?q=" + nombreSinEspacios);

    }
}
