import java.util.Scanner;
import java.util.Random;


public class PiedraPapelTijera {
    private static final String[] OPCIONES = {"piedra", "papel", "tijera"};

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("**********************************************");
        System.out.println("*         ¡Bienvenido al juego!               *");
        System.out.println("*        PIEDRA, PAPEL O TIJERA               *");
        System.out.println("**********************************************");
        System.out.print("¿A cuántas victorias quieres jugar? ");

        int numeroVictorias = sc.nextInt();
        sc.nextLine();
        int ganadasUsuario = 0;
        int ganadasPC = 0;
        int partidasJugadas = 0;

        while (ganadasUsuario < numeroVictorias && ganadasPC < numeroVictorias) {
            System.out.println("**************************************");
            System.out.println("*    Elige piedra, papel o tijera:   *");
            System.out.println("**************************************");

            //si el usuario ingresa una String en mayúscula el método toLowerCase la pasa a minúscula
            String opcionUsuario = sc.nextLine().toLowerCase();

            // este loop valida si la opción dada por el usuario corresponde con las existentes
            // llamando el metodo (opcionValida) de lo contrario lo hará saber y pedirá
            // de nuevo que se ingrese la opción.
            while (!opcionValida(opcionUsuario)) {
                System.out.println("Opción inválida. Por favor, elige piedra, papel o tijera.");
                opcionUsuario = sc.nextLine().toLowerCase();
            }

            String opcionPC = generarOpcionAleatoria();

            System.out.println("**************************************");
            System.out.println("*  Tu elección: " + opcionUsuario);
            System.out.println("*  Elección de la PC: " + opcionPC);
            System.out.println("**************************************");

            String resultado = determinarResultado(opcionUsuario, opcionPC);
            System.out.println(resultado);

            if (resultado.equals("Ganas tu")) {
                ganadasUsuario++;
            } else if (resultado.equals("Gana la PC")) {
                ganadasPC++;
            }
            partidasJugadas++;
            System.out.println("partidas jugadas: " + partidasJugadas);
        }

        String ganador = elegirGanador(ganadasUsuario, ganadasPC);
        System.out.println("*************************************");
        System.out.println("*          GAME OVER.               *");
        System.out.println("* " + ganador + "    *");
        System.out.println("*************************************");

    }

    //Este método permite elegir una opcion aleatoria del array OPCIONES
    public static String generarOpcionAleatoria() {
        Random random = new Random();
        int indiceAleatorio = random.nextInt(OPCIONES.length);
        return OPCIONES[indiceAleatorio];
    }

    //Este método  compara la opcion dada por el usuario y la opcion aleatoria de la PC
    //segun corresponda devolvera (empate,Ganas tú o Gana la PC)
    public static String determinarResultado(String opcionUsuario, String opcionPC) {
        if (opcionUsuario.equals(opcionPC)) {
            return "Empate";
        } else if ((opcionUsuario.equals("piedra") && opcionPC.equals("tijera")) || (opcionUsuario.equals("papel") && opcionPC.equals("piedra")) || (opcionUsuario.equals("tijera") && opcionPC.equals("papel"))) {
            return "Ganas tu";
        } else {
            return "Gana la PC";
        }
    }

    //Este método evalua quien gana (usuario o PC) dependiendo del numero de victorias que el
    //usuario indicó para ganar. quien tenga esa acumulación de victorias, gana el juego.
    public static String elegirGanador(int ganadasUsuario, int ganadasPC) {
        if (ganadasUsuario > ganadasPC) {
            return "¡Felicidades! Ganaste el juego.";
        } else {
            return "Lo siento la PC ganó el juego";
        }
    }

    //Este método valida las opciones teniendo en cuenta el array OPCIONES
    //si la opción del array es igual a la del usuario arrojara true
    //de lo contrario arrojaria false
    public static boolean opcionValida(String opcion) {
        for (String validOption : OPCIONES) {
            if (validOption.equals(opcion)) {
                return true;
            }
        }
        return false;
    }
}
