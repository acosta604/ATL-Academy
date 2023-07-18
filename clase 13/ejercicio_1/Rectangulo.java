import java.util.Scanner;

public class Rectangulo extends PoligonoRegular{

      public double calcularArea(){
          double area = base * altura;
         return area ;
  }

    @Override
    public double calcularPerimetro() {
        double perimetro= (2 * base) + (2 * altura);
        return perimetro;
    }

    public void cargarDatos(){
        Scanner sc =new Scanner(System.in);
        System.out.println("Ingrese la base");
        base =sc.nextDouble();
        System.out.println("Ingrese la Altura");
        altura =sc.nextDouble();


    }
}
