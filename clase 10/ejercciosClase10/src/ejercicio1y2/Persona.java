package ejercicio1y2;

public class Persona {


    private int id;
    private String nombre;
    private int edad;
    private String fechaNacimiento;
    private String dni;


    public Persona(){


    }

    public Persona(int id, String nombre, int edad, String fechaNacimiento, String dni) {
        this.id = id;
        this.nombre = nombre;
        this.edad = edad;
        this.fechaNacimiento = fechaNacimiento;
        this.dni = dni;
    }


    public int getId() {

        return id;
    }

    public void setId(int id) {

        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {

        this.nombre = nombre;
    }

    public int getEdad()
    {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public static void mostrarPersona(Persona persona) {
        System.out.println("ID: " + persona.getId());
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: " + persona.getEdad());
        System.out.println("Fecha de nacimiento: " + persona.getFechaNacimiento());
        System.out.println("DNI: " + persona.getDni());
        System.out.println(persona.getNombre() + (persona.esMayorDeEdad() ? " es mayor de edad." : " es menor de edad."));

    }

    public boolean esMayorDeEdad() {
        return edad >= 18;
    }







}
