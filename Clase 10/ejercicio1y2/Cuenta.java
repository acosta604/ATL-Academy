package ejercicio1y2;

public class Cuenta extends Persona {



    private Persona titular;
    private double cantidad;

    public Cuenta() {

    }

    public Cuenta(Persona titular, double cantidad) {
        this.titular = titular;
        this.cantidad = cantidad;

    }

    public Persona getTitular() {
        return titular;
    }

    public void setTitular(Persona titular) {
        this.titular = titular;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public static void mostrarDatosCuenta(Cuenta cuenta) {
        System.out.println("Titular: " + cuenta.getTitular().getNombre());
        System.out.println("Total Cantidad:" + cuenta.getCantidad());

    }

    public double ingresarDinero(double cantidadIngresada) {
        if (cantidadIngresada > 0) {
            cantidad += cantidadIngresada;
        }
        return cantidadIngresada;
    }

    public double retirarDinero(double cantidadRetirada) {
        cantidad -= cantidadRetirada;
        return cantidadRetirada;
    }


}
