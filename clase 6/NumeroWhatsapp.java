import java.util.Scanner;

public class NumeroWhatsapp {
    public static void main(String[] args) {
        System.out.print("Escribe un numero de celular: ");
        Scanner sc = new Scanner(System.in);
        String numero = sc.nextLine();
        String numeroSinEspacios = numero.replaceAll("\\s+", "");
        System.out.println("Link: " + "https://api.whatsapp.com/send?phone=" + numeroSinEspacios);

    }
}
