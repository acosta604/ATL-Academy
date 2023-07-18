import java.util.Scanner;
public class Historia {
    public static void main(String[] args) {

        System.out.println("¡ Bienvenido a Elige tu Propia Historia !");
        System.out.println("Es una noche estrellada, te encuentras en un bosque misterioso:");
        System.out.println(" 1) Exploras la oscuridad en busca de la fuente de un susurro escalofriante");
        System.out.println(" 2) Sigues el sendero iluminado hacia una pequeña cabaña acogedora");
        System.out.print("Elige una opcion para seguir tu camino: ");
        Scanner sc = new Scanner(System.in);
        int opcion = sc.nextInt();
        while (opcion != 1 && opcion != 2) {
            System.out.println("Opción inválida. Introduce nuevamente tu elección:");
            opcion = sc.nextInt();
        }
        parteHistoria(1, opcion);
        opcion = sc.nextInt();
        parteHistoria(2, opcion);
    }

    private static void explorar() {
        System.out.println("Decides explorar la oscuridad en busca del susurro escalofriante.");
        System.out.println("Descubres que el susurro escalofriante es el ronquido de un mapache dormido...");
        System.out.println("¡Ups! Parece que lo has despertado. ¡Corre antes de que te persiga!");
        System.exit(0);
    }

    private static void seguir() {
        System.out.println("Decides seguir el sendero iluminado hacia una pequeña cabaña acogedora.");
        System.out.println("Al llegar a la cabaña, te das cuenta de que hay dos puertas:");
        System.out.println(" 1) Entras por la puerta de la izquierda ");
        System.out.println(" 2) Optas por la puerta de la derecha");
    }

    private static void puertaIzquierda() {
        System.out.println("Al abrir la puerta de la izquierda, te encuentras con una habitación llena de tesoros brillantes y mágicos.");
        System.out.println("Te maravillas con las joyas y los objetos preciosos que llenan la sala.");
        System.out.println("Te das cuenta de que has encontrado el legendario tesoro perdido del bosque.");
        System.out.println("Con tu corazón lleno de emoción y riquezas, decides regresar a casa para compartir tu increíble aventura con el mundo.");
        System.out.println("¡Felicidades, has tenido un final exitoso en tu búsqueda!");
    }

    private static void puertaDerecha() {
        System.out.println("Optas por la puerta de la derecha y descubres...");
        System.out.println("...");
        System.out.println("¡Que la historia termino!");
        System.out.println("¡ Hasta la próxima !");
    }

    private static void parteHistoria(int parte, int opcion) {
        switch (parte) {
            case 1:
                if (opcion == 1) {
                    explorar();
                } else if (opcion == 2) {
                    seguir();
                }
                break;
            case 2:
                if (opcion == 1) {
                    puertaIzquierda();
                } else if (opcion == 2) {
                    puertaDerecha();
                }
                break;
        }
    }
}








