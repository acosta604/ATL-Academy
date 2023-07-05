import java.util.Scanner;

public class Triangulo  extends PoligonoRegular{
    protected double lado1;
    protected double lado2;
    protected double lado3;
    public double calcularArea(){
        double area = base* altura /2;
        return area ;
    }

    @Override
    public double calcularPerimetro() {
        double perimetro = lado1+lado2+lado3;
        return perimetro ;
    }
    public void cargarDatos(){
        Scanner sc =new Scanner(System.in);
        System.out.println("Ingrese la base");
        base =sc.nextDouble();
        System.out.println("Ingrese la Altura");
        altura =sc.nextDouble();
        System.out.println("Ingrese valor del lado 1");
        lado1 =sc.nextDouble();
        System.out.println("Ingrese valor del lado 2");
        lado2 =sc.nextDouble();
        System.out.println("Ingrese valor del lado 3");
        lado3 =sc.nextDouble();

    }


}
