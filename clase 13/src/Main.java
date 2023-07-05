import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        boolean mostrarMenu = true;

        while (mostrarMenu) {
            mostrarMenu = crearFigura();
        }
    }

    private static boolean crearFigura() {
        System.out.println("**************************** MENU **************************** ");
        System.out.println("Elija la figura a la que le quiere calcular el Área");
        System.out.println("1) Círculo");
        System.out.println("2) Triángulo");
        System.out.println("3) Rectángulo");
        System.out.println("0) Salir");

        Scanner sc = new Scanner(System.in);
        int opcion = sc.nextInt();

        switch (opcion) {
            case 1:
                Circulo circulo = new Circulo();
                circulo.cargarDatos();
                System.out.println("El área del círculo es: " + circulo.calcularArea());
                System.out.println("El perímetro del círculo es: " + circulo.calcularPerimetro());
                break;

            case 2:
                Triangulo triangulo = new Triangulo();
                triangulo.cargarDatos();
                System.out.println("El área del triángulo es: " + triangulo.calcularArea());
                System.out.println("El perímetro del triángulo es: " + triangulo.calcularPerimetro());
                break;

            case 3:
                Rectangulo rectangulo = new Rectangulo();
                rectangulo.cargarDatos();
                System.out.println("El área del rectángulo es: " + rectangulo.calcularArea());
                System.out.println("El perímetro del rectángulo es: " + rectangulo.calcularPerimetro());
                break;

            case 0:
                System.out.println("Saliendo del programa...");
                return false;

            default:
                System.out.println("Opción inválida. Por favor, elija una opción válida.");
                break;
        }

        return true;
    }
}
