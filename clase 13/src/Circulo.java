import java.util.Scanner;

public class Circulo extends FiguraGeometrica{

    private double radio;

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }


    public double calcularArea(){
        double area = Math.PI* Math.pow(radio,2);
        return area ;
    }

    @Override
    public double calcularPerimetro() {
        double perimetro = 2 * Math.PI * radio;
        return perimetro;
    }

    public void cargarDatos(){
        Scanner sc =new Scanner(System.in);
        System.out.println("Ingrese el radio");
        radio =sc.nextDouble();


    }



}
